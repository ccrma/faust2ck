@import "../VirtualAnalogForBrowser.chug"

SndBuf buf => VirtualAnalogForBrowser V => dac;
"special:dope" => buf.read;

// MasterVolume: initial: 0.7, minimum: 1.0, maximum: 0.0
0.7 => V.MasterVolume;

// Tune: initial: 0.0, minimum: 1.0, maximum: -1.0
0.0 => V.Tune;

// Osc_Mod: initial: 1.0, minimum: 1.0, maximum: 0.0
1.0 => V.Osc_Mod;

// Osc_3_Ctl: initial: 0.0, minimum: 1.0, maximum: 0.0
0.0 => V.Osc_3_Ctl;

// Glide: initial: 0.0, minimum: 1.0, maximum: 0.0
0.0 => V.Glide;

// Mod_Mix: initial: 0.0, minimum: 1.0, maximum: 0.0
0.0 => V.Mod_Mix;

// Octave1: initial: 1.0, minimum: 5.0, maximum: 0.0
1.0 => V.Octave1;

// DeTuning1: initial: 0.0, minimum: 1.0, maximum: -1.0
0.0 => V.DeTuning1;

// Waveform1: initial: 5.0, minimum: 5.0, maximum: 0.0
5.0 => V.Waveform1;

// Octave2: initial: 1.0, minimum: 5.0, maximum: 0.0
1.0 => V.Octave2;

// DeTuning2: initial: 0.4, minimum: 1.0, maximum: -1.0
0.4 => V.DeTuning2;

// Waveform2: initial: 5.0, minimum: 5.0, maximum: 0.0
5.0 => V.Waveform2;

// Octave3: initial: 0.0, minimum: 5.0, maximum: 0.0
0.0 => V.Octave3;

// DeTuning3: initial: 0.3, minimum: 1.0, maximum: -1.0
0.3 => V.DeTuning3;

// Waveform3: initial: 0.0, minimum: 5.0, maximum: 0.0
0.0 => V.Waveform3;

// Osc1_Amp: initial: 0.5, minimum: 1.0, maximum: 0.0
0.5 => V.Osc1_Amp;

// amp1Enable: initial: 1.0, minimum: 1.0, maximum: 0.0
1.0 => V.amp1Enable;

// Ext_Input: initial: 0.0, minimum: 1.0, maximum: 0.0
0.0 => V.Ext_Input;

// extInputOn: initial: 0.0, minimum: 1.0, maximum: 0.0
0.0 => V.extInputOn;

// Osc2_Amp: initial: 0.5, minimum: 1.0, maximum: 0.0
0.5 => V.Osc2_Amp;

// amp2Enable: initial: 1.0, minimum: 1.0, maximum: 0.0
1.0 => V.amp2Enable;

// Noise_Amp: initial: 0.0, minimum: 1.0, maximum: 0.0
0.0 => V.Noise_Amp;

// noiseEnable: initial: 0.0, minimum: 1.0, maximum: 0.0
0.0 => V.noiseEnable;

// WhitePink: initial: 1.0, minimum: 1.0, maximum: 0.0
1.0 => V.WhitePink;

// Osc3_Amp: initial: 0.5, minimum: 1.0, maximum: 0.0
0.5 => V.Osc3_Amp;

// amp3Enable: initial: 0.0, minimum: 1.0, maximum: 0.0
0.0 => V.amp3Enable;

// Filter_Mod: initial: 1.0, minimum: 1.0, maximum: 0.0
1.0 => V.Filter_Mod;

// Kbd_Ctl: initial: 1.0, minimum: 1.0, maximum: 0.0
1.0 => V.Kbd_Ctl;

// Corner_Freq: initial: 10.6, minimum: 14.3, maximum: 5.3
10.6 => V.Corner_Freq;

// Corner_Resonance: initial: 0.7, minimum: 1.0, maximum: 0.0
0.7 => V.Corner_Resonance;

// Amount_of_Contour_octaves: initial: 1.2, minimum: 4.0, maximum: 0.0
1.2 => V.Amount_of_Contour_octaves;

// AttackF: initial: 1400.0, minimum: 10000.0, maximum: 10.0
1400.0 => V.AttackF;

// DecayF: initial: 10.0, minimum: 10000.0, maximum: 10.0
10.0 => V.DecayF;

// SustainF: initial: 80.0, minimum: 100.0, maximum: 0.0
80.0 => V.SustainF;

// AttackA: initial: 2.0, minimum: 5000.0, maximum: 0.0
2.0 => V.AttackA;

// DecayA: initial: 10.0, minimum: 10000.0, maximum: 0.0
10.0 => V.DecayA;

// SustainA: initial: 80.0, minimum: 100.0, maximum: 0.0
80.0 => V.SustainA;

// Decay: initial: 1.0, minimum: 1.0, maximum: 0.0
1.0 => V.Decay;

// GlideEnable: initial: 1.0, minimum: 1.0, maximum: 0.0
1.0 => V.GlideEnable;

// bend: initial: 0.0, minimum: 2.0, maximum: -2.0
0.0 => V.bend;

// mod: initial: 0.0, minimum: 1.0, maximum: 0.0
0.0 => V.mod;

// gateHold: initial: 0.0, minimum: 1.0, maximum: 0.0
0.0 => V.gateHold;

// gate
1.0 => V.gate;

// sustain
1.0 => V.sustain;

// freq: initial: 220.0, minimum: 20000.0, maximum: 0.1
220.0 => V.freq;

// gain: initial: 0.2, minimum: 1.0, maximum: 0.0
0.2 => V.gain;

5::second => now;
