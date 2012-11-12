
#include "chuck_def.h"
#include "chuck_dl.h"

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

class UI
{
	bool	fStopped;
public:
		
	UI() : fStopped(false) {}
	virtual ~UI() {}
	
	virtual void addButton(const char* label, float* zone) {}
	virtual void addToggleButton(const char* label, float* zone) {}
	virtual void addCheckButton(const char* label, float* zone) {}
	virtual void addVerticalSlider(const char* label, float* zone, float init, float min, float max, float step) {}
	virtual void addHorizontalSlider(const char* label, float* zone, float init, float min, float max, float step) {}
	virtual void addNumEntry(const char* label, float* zone, float init, float min, float max, float step) {}
	
	virtual void openFrameBox(const char* label) {}
	virtual void openTabBox(const char* label) {}
	virtual void openHorizontalBox(const char* label) {}
	virtual void openVerticalBox(const char* label) {}
	virtual void closeBox() {}
	
	virtual void run() {}
	
	void stop()	{ fStopped = true; }
	bool stopped() 	{ return fStopped; }
};

class dsp { public: float fSamplingFreq; };

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

CK_DLL_CTOR(%dsp_name%_ctor)
{
    // return data to be used later
    %dsp_name% *d = new %dsp_name%;
    OBJ_MEMBER_UINT(SELF, %dsp_name%_offset_data) = (t_CKUINT)d;
    d->init(g_sr);
}

CK_DLL_DTOR(%dsp_name%_dtor)
{
    delete (%dsp_name%*) OBJ_MEMBER_UINT(SELF, %dsp_name%_offset_data);
    OBJ_MEMBER_UINT(SELF, %dsp_name%_offset_data) = 0;
}

CK_DLL_TICKF(%dsp_name%_tickf)
{
    %dsp_name% *d = (%dsp_name%*)OBJ_MEMBER_UINT(SELF, %dsp_name%_offset_data);
//    float * input, * output;
//    input = &in;
//    output = out;
    
    // TODO: proper multichannel handling
	d->compute(nframes, &in, &out);
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
    
    QUERY->add_ugen_funcf(QUERY, %dsp_name%_tickf, NULL, temp.getNumInputs(), temp.getNumOutputs());

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
