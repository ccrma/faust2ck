@import "../VirtualAnalogWithEffectsForBrowser.chug"

SndBuf buf => freeverb f => dac;
"special:dope" => buf.read;

// MasterVolume: initial: 0.7, minimum: 1.0, maximum: 0.0
0.7 => f.MasterVolume;

// Tune: initial: 0.0, minimum: 1.0, maximum: -1.0
0.0 => f.Tune;

// Osc_Mod: initial: 1.0, minimum: 1.0, maximum: 0.0
1.0 => f.Osc_Mod;

// Osc_3_Ctl: initial: 0.0, minimum: 1.0, maximum: 0.0
0.0 => f.Osc_3_Ctl;

// Glide: initial: 0.0, minimum: 1.0, maximum: 0.0
0.0 => f.Glide;

// Mod_Mix: initial: 0.0, minimum: 1.0, maximum: 0.0
0.0 => f.Mod_Mix;

// Octave1: initial: 1.0, minimum: 5.0, maximum: 0.0
1.0 => f.Octave1;

// DeTuning1: initial: 0.0, minimum: 1.0, maximum: -1.0
0.0 => f.DeTuning1;

// Waveform1: initial: 5.0, minimum: 5.0, maximum: 0.0
5.0 => f.Waveform1;

// Octave2: initial: 1.0, minimum: 5.0, maximum: 0.0
1.0 => f.Octave2;

// DeTuning2: initial: 0.4, minimum: 1.0, maximum: -1.0
0.4 => f.DeTuning2;

// Waveform2: initial: 5.0, minimum: 5.0, maximum: 0.0
5.0 => f.Waveform2;

// Octave3: initial: 0.0, minimum: 5.0, maximum: 0.0
0.0 => f.Octave3;

// DeTuning3: initial: 0.3, minimum: 1.0, maximum: -1.0
0.3 => f.DeTuning3;

// Waveform3: initial: 0.0, minimum: 5.0, maximum: 0.0
0.0 => f.Waveform3;

// Osc1_Amp: initial: 0.5, minimum: 1.0, maximum: 0.0
0.5 => f.Osc1_Amp;

// On: initial: 1.0, minimum: 1.0, maximum: 0.0
1.0 => f.On;

// Ext_Input: initial: 0.0, minimum: 1.0, maximum: 0.0
0.0 => f.Ext_Input;

// On: initial: 0.0, minimum: 1.0, maximum: 0.0
0.0 => f.On;

// Osc2_Amp: initial: 0.5, minimum: 1.0, maximum: 0.0
0.5 => f.Osc2_Amp;

// On: initial: 1.0, minimum: 1.0, maximum: 0.0
1.0 => f.On;

// Noise_Amp: initial: 0.0, minimum: 1.0, maximum: 0.0
0.0 => f.Noise_Amp;

// On: initial: 0.0, minimum: 1.0, maximum: 0.0
0.0 => f.On;

// WhitePink: initial: 1.0, minimum: 1.0, maximum: 0.0
1.0 => f.WhitePink;

// Osc3_Amp: initial: 0.5, minimum: 1.0, maximum: 0.0
0.5 => f.Osc3_Amp;

// On: initial: 0.0, minimum: 1.0, maximum: 0.0
0.0 => f.On;

// Filter_Mod: initial: 1.0, minimum: 1.0, maximum: 0.0
1.0 => f.Filter_Mod;

// Kbd_Ctl: initial: 1.0, minimum: 1.0, maximum: 0.0
1.0 => f.Kbd_Ctl;

// Corner_Freq: initial: 10.6, minimum: 14.3, maximum: 5.3
10.6 => f.Corner_Freq;

// Corner_Resonance: initial: 0.7, minimum: 1.0, maximum: 0.0
0.7 => f.Corner_Resonance;

// Amount_of_Contour_octaves: initial: 1.2, minimum: 4.0, maximum: 0.0
1.2 => f.Amount_of_Contour_octaves;

// AttackF: initial: 1400.0, minimum: 10000.0, maximum: 10.0
1400.0 => f.AttackF;

// DecayF: initial: 10.0, minimum: 10000.0, maximum: 10.0
10.0 => f.DecayF;

// SustainF: initial: 80.0, minimum: 100.0, maximum: 0.0
80.0 => f.SustainF;

// AttackA: initial: 2.0, minimum: 5000.0, maximum: 0.0
2.0 => f.AttackA;

// DecayA: initial: 10.0, minimum: 10000.0, maximum: 0.0
10.0 => f.DecayA;

// SustainA: initial: 80.0, minimum: 100.0, maximum: 0.0
80.0 => f.SustainA;

// Decay: initial: 1.0, minimum: 1.0, maximum: 0.0
1.0 => f.Decay;

// Glide: initial: 1.0, minimum: 1.0, maximum: 0.0
1.0 => f.Glide;

// bend: initial: 0.0, minimum: 2.0, maximum: -2.0
0.0 => f.bend;

// mod: initial: 0.0, minimum: 1.0, maximum: 0.0
0.0 => f.mod;

// gateHold: initial: 0.0, minimum: 1.0, maximum: 0.0
0.0 => f.gateHold;

// gate
1.0 => f.gate;

// sustain
1.0 => f.sustain;

// freq: initial: 220.0, minimum: 20000.0, maximum: 0.1
220.0 => f.freq;

// gain: initial: 0.2, minimum: 1.0, maximum: 0.0
0.2 => f.gain;

5::second => now;
