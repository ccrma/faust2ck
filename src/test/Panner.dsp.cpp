/* ------------------------------------------------------------
name: "Panner"
Code generated with Faust 2.68.1 (https://faust.grame.fr)
Compilation options: -a .faust2ck_tmp/Panner.dsp-wrapper.cpp -lang cpp -ct 1 -es 1 -mcd 16 -single -ftz 0
------------------------------------------------------------ */

#ifndef  __mydsp_H__
#define  __mydsp_H__

#include "chuck_def.h"
#include "chuck_dl.h"

#include <stdio.h>
#include <string.h>
#include <limits.h>

#include <map>
#include <string>
#include <cmath>
#include <algorithm>

//-------------------------------------------------------------------
// Generic min and max using C++ inline
//-------------------------------------------------------------------

#ifndef WIN32

inline int      max (unsigned int a, unsigned int b) { return (a>b) ? a : b; }
inline int      max (int a, int b)          { return (a>b) ? a : b; }

inline long     max (long a, long b)        { return (a>b) ? a : b; }
inline long     max (int a, long b)         { return (a>b) ? a : b; }
inline long     max (long a, int b)         { return (a>b) ? a : b; }

inline float    max (float a, float b)      { return (a>b) ? a : b; }
inline float    max (int a, float b)        { return (a>b) ? a : b; }
inline float    max (float a, int b)        { return (a>b) ? a : b; }
inline float    max (long a, float b)       { return (a>b) ? a : b; }
inline float    max (float a, long b)       { return (a>b) ? a : b; }

inline double   max (double a, double b)    { return (a>b) ? a : b; }
inline double   max (int a, double b)       { return (a>b) ? a : b; }
inline double   max (double a, int b)       { return (a>b) ? a : b; }
inline double   max (long a, double b)      { return (a>b) ? a : b; }
inline double   max (double a, long b)      { return (a>b) ? a : b; }
inline double   max (float a, double b)     { return (a>b) ? a : b; }
inline double   max (double a, float b)     { return (a>b) ? a : b; }


inline int      min (int a, int b)          { return (a<b) ? a : b; }

inline long     min (long a, long b)        { return (a<b) ? a : b; }
inline long     min (int a, long b)         { return (a<b) ? a : b; }
inline long     min (long a, int b)         { return (a<b) ? a : b; }

inline float    min (float a, float b)      { return (a<b) ? a : b; }
inline float    min (int a, float b)        { return (a<b) ? a : b; }
inline float    min (float a, int b)        { return (a<b) ? a : b; }
inline float    min (long a, float b)       { return (a<b) ? a : b; }
inline float    min (float a, long b)       { return (a<b) ? a : b; }

inline double   min (double a, double b)    { return (a<b) ? a : b; }
inline double   min (int a, double b)       { return (a<b) ? a : b; }
inline double   min (double a, int b)       { return (a<b) ? a : b; }
inline double   min (long a, double b)      { return (a<b) ? a : b; }
inline double   min (double a, long b)      { return (a<b) ? a : b; }
inline double   min (float a, double b)     { return (a<b) ? a : b; }
inline double   min (double a, float b)     { return (a<b) ? a : b; }

#endif // ndef WIN32

inline int      lsr (int x, int n)          { return int(((unsigned int)x) >> n); }
inline int      int2pow2 (int x)            { int r=0; while ((1<<r)<x) r++; return r; }


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

/*
 * FAUST defines UI values as private, but provides no getters/setters.
 * In our particular case it's way more convenient to access them directly
 * than to set up a complicated UI structure.  Also get rid of everything
 * being "virtual", since it may stop the compiler from inlining properly!
 */
#define private public
#define virtual

/* Rename the class the name of our DSP. */
#define mydsp Panner

/*
 * FAUST class
 */
#ifndef FAUSTFLOAT
#define FAUSTFLOAT float
#endif 

#include <algorithm>
#include <cmath>
#include <cstdint>

#ifndef FAUSTCLASS 
#define FAUSTCLASS mydsp
#endif

#ifdef __APPLE__ 
#define exp10f __exp10f
#define exp10 __exp10
#endif

#if defined(_WIN32)
#define RESTRICT __restrict
#else
#define RESTRICT __restrict__
#endif


class mydsp : public dsp {
	
 private:
	
	FAUSTFLOAT fHslider0;
	int fSampleRate;
	
 public:
	mydsp() {}

	void metadata(Meta* m) { 
		m->declare("compile_options", "-a .faust2ck_tmp/Panner.dsp-wrapper.cpp -lang cpp -ct 1 -es 1 -mcd 16 -single -ftz 0");
		m->declare("filename", "Panner.dsp");
		m->declare("name", "Panner");
	}

	virtual int getNumInputs() {
		return 1;
	}
	virtual int getNumOutputs() {
		return 2;
	}
	
	static void classInit(int sample_rate) {
	}
	
	virtual void instanceConstants(int sample_rate) {
		fSampleRate = sample_rate;
	}
	
	virtual void instanceResetUserInterface() {
		fHslider0 = FAUSTFLOAT(0.5f);
	}
	
	virtual void instanceClear() {
	}
	
	virtual void init(int sample_rate) {
		classInit(sample_rate);
		instanceInit(sample_rate);
	}
	
	virtual void instanceInit(int sample_rate) {
		instanceConstants(sample_rate);
		instanceResetUserInterface();
		instanceClear();
	}
	
	virtual mydsp* clone() {
		return new mydsp();
	}
	
	virtual int getSampleRate() {
		return fSampleRate;
	}
	
	virtual void buildUserInterface(UI* ui_interface) {
		ui_interface->openVerticalBox("Panner");
		ui_interface->addHorizontalSlider("pan", &fHslider0, FAUSTFLOAT(0.5f), FAUSTFLOAT(0.0f), FAUSTFLOAT(1.0f), FAUSTFLOAT(0.01f));
		ui_interface->closeBox();
	}
	
	virtual void compute(int count, FAUSTFLOAT** RESTRICT inputs, FAUSTFLOAT** RESTRICT outputs) {
		FAUSTFLOAT* input0 = inputs[0];
		FAUSTFLOAT* output0 = outputs[0];
		FAUSTFLOAT* output1 = outputs[1];
		float fSlow0 = float(fHslider0);
		float fSlow1 = 1.0f - fSlow0;
		for (int i0 = 0; i0 < count; i0 = i0 + 1) {
			float fTemp0 = float(input0[i0]);
			output0[i0] = FAUSTFLOAT(fSlow1 * fTemp0);
			output1[i0] = FAUSTFLOAT(fSlow0 * fTemp0);
		}
	}

};

#undef private
#undef virtual
#undef mydsp

/*
 * ChucK glue code
 */
static t_CKUINT Panner_offset_data = 0;
static int g_sr = 44100;
static int g_nChans = 1;

CK_DLL_CTOR(Panner_ctor)
{
    // return data to be used later
    Panner *d = new Panner;
    OBJ_MEMBER_UINT(SELF, Panner_offset_data) = (t_CKUINT)d;
    d->init(g_sr);
    d->ck_frame_in = new SAMPLE*[g_nChans];
    d->ck_frame_out = new SAMPLE*[g_nChans];
}

CK_DLL_DTOR(Panner_dtor)
{
    Panner *d = (Panner*)OBJ_MEMBER_UINT(SELF, Panner_offset_data);

    delete[] d->ck_frame_in;
    delete[] d->ck_frame_out;
    
    delete d;
    
    OBJ_MEMBER_UINT(SELF, Panner_offset_data) = 0;
}

// mono tick
CK_DLL_TICK(Panner_tick)
{
    Panner *d = (Panner*)OBJ_MEMBER_UINT(SELF, Panner_offset_data);
    
    d->ck_frame_in[0] = &in;
    d->ck_frame_out[0] = out;

    d->compute(1, d->ck_frame_in, d->ck_frame_out);
    
    return TRUE;
}

// multichannel tick
CK_DLL_TICKF(Panner_tickf)
{
    Panner *d = (Panner*)OBJ_MEMBER_UINT(SELF, Panner_offset_data);
    
    for(int f = 0; f < nframes; f++)
    {
        // fake-deinterleave
        for(int c = 0; c < g_nChans; c++)
        {
            d->ck_frame_in[c] = &in[f*g_nChans+c];
            d->ck_frame_out[c] = &out[f*g_nChans+c];
        }
        
        d->compute(1, d->ck_frame_in, d->ck_frame_out);
    }
    
    return TRUE;
}

CK_DLL_MFUN(Panner_ctrl_fHslider0)
{
    Panner *d = (Panner*)OBJ_MEMBER_UINT(SELF, Panner_offset_data);
    d->fHslider0 = (SAMPLE)GET_CK_FLOAT(ARGS);
    RETURN->v_float = (t_CKFLOAT)(d->fHslider0);
}

CK_DLL_MFUN(Panner_cget_fHslider0)
{
    Panner *d = (Panner*)OBJ_MEMBER_UINT(SELF, Panner_offset_data);
    RETURN->v_float = (t_CKFLOAT)(d->fHslider0);
}




CK_DLL_QUERY(Panner_query)
{
    g_sr = QUERY->srate;

	Panner temp; // needed to get IO channel count

    QUERY->setname(QUERY, "Panner");
    
    QUERY->begin_class(QUERY, "Panner", "UGen");
    
    QUERY->add_ctor(QUERY, Panner_ctor);
    QUERY->add_dtor(QUERY, Panner_dtor);
    
    g_nChans = max(temp.getNumInputs(), temp.getNumOutputs());
    
    if(g_nChans == 1)
        QUERY->add_ugen_func(QUERY, Panner_tick, NULL, g_nChans, g_nChans);
    else
        QUERY->add_ugen_funcf(QUERY, Panner_tickf, NULL, g_nChans, g_nChans);

    // add member variable
    Panner_offset_data = QUERY->add_mvar( QUERY, "int", "@Panner_data", FALSE );
    if( Panner_offset_data == CK_INVALID_OFFSET ) goto error;

    
    QUERY->add_mfun( QUERY, Panner_cget_fHslider0 , "float", "pan" );
    
    QUERY->add_mfun( QUERY, Panner_ctrl_fHslider0 , "float", "pan" );
    QUERY->add_arg( QUERY, "float", "pan" );
    


    // end import
	QUERY->end_class(QUERY);
	
    return TRUE;

error:
    // end import
	QUERY->end_class(QUERY);

    return FALSE;
}

#endif
