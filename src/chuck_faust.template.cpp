
#include "chuck_def.h"
#include "chuck_dl.h"

#include <stdio.h>
#include <string.h>
#include <limits.h>

#include <map>
#include <string>
#include <cmath>
#include <algorithm>

/******************************************************************************
 *******************************************************************************
 
 FAUST META DATA
 
 *******************************************************************************
 *******************************************************************************/

struct Meta : std::map<std::string, std::string>
{
    void declare(const char* key, const char* value)
    {
        (*this)[key] = value;
    }
};

/* UI class - do-nothing (from FAUST/minimal.cpp) */

#ifdef WIN32
#ifdef interface
#undef interface
#endif // interface
#endif // WIN32

#ifndef FAUSTFLOAT
#define FAUSTFLOAT float
#endif

class Soundfile;

class UI
{
    public:
        virtual ~UI() {}
        
        // active widgets
        virtual void addButton(const char* label, FAUSTFLOAT* zone) = 0;
        virtual void addCheckButton(const char* label, FAUSTFLOAT* zone) = 0;
        virtual void addVerticalSlider(const char* label, FAUSTFLOAT* zone, FAUSTFLOAT init, FAUSTFLOAT min, FAUSTFLOAT max, FAUSTFLOAT step) = 0;
        virtual void addHorizontalSlider(const char* label, FAUSTFLOAT* zone, FAUSTFLOAT init, FAUSTFLOAT min, FAUSTFLOAT max, FAUSTFLOAT step) = 0;
        virtual void addNumEntry(const char* label, FAUSTFLOAT* zone, FAUSTFLOAT init, FAUSTFLOAT min, FAUSTFLOAT max, FAUSTFLOAT step) = 0;
        
        // passive widgets
        virtual void addHorizontalBargraph(const char* label, FAUSTFLOAT* zone, FAUSTFLOAT min, FAUSTFLOAT max) = 0;
        virtual void addVerticalBargraph(const char* label, FAUSTFLOAT* zone, FAUSTFLOAT min, FAUSTFLOAT max) = 0;
        
        // layout widgets
        virtual void openTabBox(const char* label) = 0;
        virtual void openHorizontalBox(const char* label) = 0;
        virtual void openVerticalBox(const char* label) = 0;
        virtual void closeBox() = 0;
        
        // soundfiles
        
        virtual void addSoundfile(const char* label, const char* filename, Soundfile** sf_zone) = 0;
        
        virtual void declare(FAUSTFLOAT* zone, const char* key, const char* value) {}
};

class dsp
{
    public:
        virtual ~dsp() {}
    
        virtual int getNumInputs() = 0;
        virtual int getNumOutputs() = 0;
        virtual void buildUserInterface(UI* interface) = 0;
        virtual int getSampleRate() = 0;
        virtual void init(int samplingRate) = 0;
        virtual void instanceInit(int sample_rate) = 0;
        virtual void instanceConstants(int sample_rate) = 0;
        virtual void instanceResetUserInterface() = 0;
        virtual void instanceClear() = 0;
        virtual dsp* clone() = 0;
        virtual void metadata(Meta* m) = 0;
        virtual void compute(int len, FAUSTFLOAT** inputs, FAUSTFLOAT** outputs) = 0;
        
        SAMPLE ** ck_frame_in;
        SAMPLE ** ck_frame_out;

};

/*
 * FAUST intrinsic
 */
<<includeIntrinsic>>

/*
 * FAUST defines UI values as private, but provides no getters/setters.
 * In our particular case it's way more convenient to access them directly
 * than to set up a complicated UI structure.  Also get rid of everything
 * being "virtual", since it may stop the compiler from inlining properly!
 */
#define private public
#define virtual

/* Rename the class the name of our DSP. */
#define mydsp %dsp_name%

/*
 * FAUST class
 */
<<includeclass>>

#undef private
#undef virtual
#undef mydsp

/*
 * ChucK glue code
 */
static t_CKUINT %dsp_name%_offset_data = 0;
static int g_sr = 44100;
static int g_nChans = 1;

CK_DLL_CTOR(%dsp_name%_ctor)
{
    // return data to be used later
    %dsp_name% *d = new %dsp_name%;
    OBJ_MEMBER_UINT(SELF, %dsp_name%_offset_data) = (t_CKUINT)d;
    d->init(g_sr);
    d->ck_frame_in = new SAMPLE*[g_nChans];
    d->ck_frame_out = new SAMPLE*[g_nChans];
}

CK_DLL_DTOR(%dsp_name%_dtor)
{
    %dsp_name% *d = (%dsp_name%*)OBJ_MEMBER_UINT(SELF, %dsp_name%_offset_data);

    delete[] d->ck_frame_in;
    delete[] d->ck_frame_out;
    delete d;
    
    OBJ_MEMBER_UINT(SELF, %dsp_name%_offset_data) = 0;
}

// mono tick
CK_DLL_TICK(%dsp_name%_tick)
{
    %dsp_name% *d = (%dsp_name%*)OBJ_MEMBER_UINT(SELF, %dsp_name%_offset_data);
    
    d->ck_frame_in[0] = &in;
    d->ck_frame_out[0] = out;
    d->compute(1, d->ck_frame_in, d->ck_frame_out);
    
    return TRUE;
}

// multichannel tick
CK_DLL_TICKF(%dsp_name%_tickf)
{
    %dsp_name% *d = (%dsp_name%*)OBJ_MEMBER_UINT(SELF, %dsp_name%_offset_data);
    
    for (int f = 0; f < nframes; f++)
    {
        // fake-deinterleave
        for (int c = 0; c < g_nChans; c++)
        {
            d->ck_frame_in[c] = &in[f*g_nChans+c];
            d->ck_frame_out[c] = &out[f*g_nChans+c];
        }
        
        d->compute(1, d->ck_frame_in, d->ck_frame_out);
    }
    
    return TRUE;
}

%ctrl_cget_functions%

CK_DLL_QUERY(%dsp_name%_query)
{
    g_sr = QUERY->srate;

	%dsp_name% temp; // needed to get IO channel count

    QUERY->setname(QUERY, "%dsp_name%");
    
    QUERY->begin_class(QUERY, "%dsp_name%", "UGen");
    
    QUERY->add_ctor(QUERY, %dsp_name%_ctor);
    QUERY->add_dtor(QUERY, %dsp_name%_dtor);
    
    g_nChans = std::max(temp.getNumInputs(), temp.getNumOutputs());
    
    if (g_nChans == 1)
        QUERY->add_ugen_func(QUERY, %dsp_name%_tick, NULL, g_nChans, g_nChans);
    else
        QUERY->add_ugen_funcf(QUERY, %dsp_name%_tickf, NULL, g_nChans, g_nChans);

    // add member variable
    %dsp_name%_offset_data = QUERY->add_mvar( QUERY, "int", "@%dsp_name%_data", FALSE );
    if( %dsp_name%_offset_data == CK_INVALID_OFFSET ) goto error;

    %ctrl_cget_query%

    // end import
	QUERY->end_class(QUERY);
    return TRUE;

error:
    // end import
	QUERY->end_class(QUERY);
    return FALSE;
}
