@import "../DX7.chug"

DX7 D => dac;

// Feedback: initial: 0.0, minimum: 7.0, maximum: 0.0
0.0 => D.Feedback;

// Transpose: initial: 0.0, minimum: 24.0, maximum: -24.0
0.0 => D.Transpose;

// Osc_Key_Sync: initial: 1.0, minimum: 1.0, maximum: 0.0
1.0 => D.Osc_Key_Sync;

// L1: initial: 50.0, minimum: 99.0, maximum: 0.0
50.0 => D.L1;

// L2: initial: 50.0, minimum: 99.0, maximum: 0.0
50.0 => D.L2;

// L3: initial: 50.0, minimum: 99.0, maximum: 0.0
50.0 => D.L3;

// L4: initial: 50.0, minimum: 99.0, maximum: 0.0
50.0 => D.L4;

// R1: initial: 99.0, minimum: 99.0, maximum: 0.0
99.0 => D.R1;

// R2: initial: 99.0, minimum: 99.0, maximum: 0.0
99.0 => D.R2;

// R3: initial: 99.0, minimum: 99.0, maximum: 0.0
99.0 => D.R3;

// R4: initial: 99.0, minimum: 99.0, maximum: 0.0
99.0 => D.R4;

// Wave: initial: 0.0, minimum: 5.0, maximum: 0.0
0.0 => D.Wave;

// Speed: initial: 35.0, minimum: 99.0, maximum: 0.0
35.0 => D.Speed;

// Delay: initial: 0.0, minimum: 99.0, maximum: 0.0
0.0 => D.Delay;

// PMD: initial: 0.0, minimum: 99.0, maximum: 0.0
0.0 => D.PMD;

// AMD: initial: 0.0, minimum: 99.0, maximum: 0.0
0.0 => D.AMD;

// Sync: initial: 1.0, minimum: 1.0, maximum: 0.0
1.0 => D.Sync;

// P_Mod_Sens: initial: 3.0, minimum: 7.0, maximum: 0.0
3.0 => D.P_Mod_Sens;

// Tune: initial: 0.0, minimum: 7.0, maximum: -7.0
0.0 => D.Tune;

// Coarse: initial: 1.0, minimum: 31.0, maximum: 0.0
1.0 => D.Coarse;

// Fine: initial: 0.0, minimum: 99.0, maximum: 0.0
0.0 => D.Fine;

// Freq_Mode
1.0 => D.Freq_Mode;

// L1: initial: 99.0, minimum: 99.0, maximum: 0.0
99.0 => D.L1;

// L2: initial: 99.0, minimum: 99.0, maximum: 0.0
99.0 => D.L2;

// L3: initial: 99.0, minimum: 99.0, maximum: 0.0
99.0 => D.L3;

// L4: initial: 0.0, minimum: 99.0, maximum: 0.0
0.0 => D.L4;

// R1: initial: 99.0, minimum: 99.0, maximum: 0.0
99.0 => D.R1;

// R2: initial: 99.0, minimum: 99.0, maximum: 0.0
99.0 => D.R2;

// R3: initial: 99.0, minimum: 99.0, maximum: 0.0
99.0 => D.R3;

// R4: initial: 99.0, minimum: 99.0, maximum: 0.0
99.0 => D.R4;

// Level: initial: 99.0, minimum: 99.0, maximum: 0.0
99.0 => D.Level;

// Key_Vel: initial: 0.0, minimum: 7.0, maximum: 0.0
0.0 => D.Key_Vel;

// A_Mod_Sens: initial: 0.0, minimum: 3.0, maximum: 0.0
0.0 => D.A_Mod_Sens;

// Rate_Scaling: initial: 0.0, minimum: 7.0, maximum: 0.0
0.0 => D.Rate_Scaling;

// Breakpoint: initial: 0.0, minimum: 99.0, maximum: 0.0
0.0 => D.Breakpoint;

// L_Depth: initial: 0.0, minimum: 99.0, maximum: 0.0
0.0 => D.L_Depth;

// R_Depth: initial: 0.0, minimum: 99.0, maximum: 0.0
0.0 => D.R_Depth;

// L_Curve: initial: 0.0, minimum: 3.0, maximum: 0.0
0.0 => D.L_Curve;

// R_Curve: initial: 0.0, minimum: 3.0, maximum: 0.0
0.0 => D.R_Curve;

// Tune: initial: 0.0, minimum: 7.0, maximum: -7.0
0.0 => D.Tune;

// Coarse: initial: 1.0, minimum: 31.0, maximum: 0.0
1.0 => D.Coarse;

// Fine: initial: 0.0, minimum: 99.0, maximum: 0.0
0.0 => D.Fine;

// Freq_Mode
1.0 => D.Freq_Mode;

// L1: initial: 99.0, minimum: 99.0, maximum: 0.0
99.0 => D.L1;

// L2: initial: 99.0, minimum: 99.0, maximum: 0.0
99.0 => D.L2;

// L3: initial: 99.0, minimum: 99.0, maximum: 0.0
99.0 => D.L3;

// L4: initial: 0.0, minimum: 99.0, maximum: 0.0
0.0 => D.L4;

// R1: initial: 99.0, minimum: 99.0, maximum: 0.0
99.0 => D.R1;

// R2: initial: 99.0, minimum: 99.0, maximum: 0.0
99.0 => D.R2;

// R3: initial: 99.0, minimum: 99.0, maximum: 0.0
99.0 => D.R3;

// R4: initial: 99.0, minimum: 99.0, maximum: 0.0
99.0 => D.R4;

// Level: initial: 0.0, minimum: 99.0, maximum: 0.0
0.0 => D.Level;

// Key_Vel: initial: 0.0, minimum: 7.0, maximum: 0.0
0.0 => D.Key_Vel;

// A_Mod_Sens: initial: 0.0, minimum: 3.0, maximum: 0.0
0.0 => D.A_Mod_Sens;

// Rate_Scaling: initial: 0.0, minimum: 7.0, maximum: 0.0
0.0 => D.Rate_Scaling;

// Breakpoint: initial: 0.0, minimum: 99.0, maximum: 0.0
0.0 => D.Breakpoint;

// L_Depth: initial: 0.0, minimum: 99.0, maximum: 0.0
0.0 => D.L_Depth;

// R_Depth: initial: 0.0, minimum: 99.0, maximum: 0.0
0.0 => D.R_Depth;

// L_Curve: initial: 0.0, minimum: 3.0, maximum: 0.0
0.0 => D.L_Curve;

// R_Curve: initial: 0.0, minimum: 3.0, maximum: 0.0
0.0 => D.R_Curve;

// Tune: initial: 0.0, minimum: 7.0, maximum: -7.0
0.0 => D.Tune;

// Coarse: initial: 1.0, minimum: 31.0, maximum: 0.0
1.0 => D.Coarse;

// Fine: initial: 0.0, minimum: 99.0, maximum: 0.0
0.0 => D.Fine;

// Freq_Mode
1.0 => D.Freq_Mode;

// L1: initial: 99.0, minimum: 99.0, maximum: 0.0
99.0 => D.L1;

// L2: initial: 99.0, minimum: 99.0, maximum: 0.0
99.0 => D.L2;

// L3: initial: 99.0, minimum: 99.0, maximum: 0.0
99.0 => D.L3;

// L4: initial: 0.0, minimum: 99.0, maximum: 0.0
0.0 => D.L4;

// R1: initial: 99.0, minimum: 99.0, maximum: 0.0
99.0 => D.R1;

// R2: initial: 99.0, minimum: 99.0, maximum: 0.0
99.0 => D.R2;

// R3: initial: 99.0, minimum: 99.0, maximum: 0.0
99.0 => D.R3;

// R4: initial: 99.0, minimum: 99.0, maximum: 0.0
99.0 => D.R4;

// Level: initial: 0.0, minimum: 99.0, maximum: 0.0
0.0 => D.Level;

// Key_Vel: initial: 0.0, minimum: 7.0, maximum: 0.0
0.0 => D.Key_Vel;

// A_Mod_Sens: initial: 0.0, minimum: 3.0, maximum: 0.0
0.0 => D.A_Mod_Sens;

// Rate_Scaling: initial: 0.0, minimum: 7.0, maximum: 0.0
0.0 => D.Rate_Scaling;

// Breakpoint: initial: 0.0, minimum: 99.0, maximum: 0.0
0.0 => D.Breakpoint;

// L_Depth: initial: 0.0, minimum: 99.0, maximum: 0.0
0.0 => D.L_Depth;

// R_Depth: initial: 0.0, minimum: 99.0, maximum: 0.0
0.0 => D.R_Depth;

// L_Curve: initial: 0.0, minimum: 3.0, maximum: 0.0
0.0 => D.L_Curve;

// R_Curve: initial: 0.0, minimum: 3.0, maximum: 0.0
0.0 => D.R_Curve;

// Tune: initial: 0.0, minimum: 7.0, maximum: -7.0
0.0 => D.Tune;

// Coarse: initial: 1.0, minimum: 31.0, maximum: 0.0
1.0 => D.Coarse;

// Fine: initial: 0.0, minimum: 99.0, maximum: 0.0
0.0 => D.Fine;

// Freq_Mode
1.0 => D.Freq_Mode;

// L1: initial: 99.0, minimum: 99.0, maximum: 0.0
99.0 => D.L1;

// L2: initial: 99.0, minimum: 99.0, maximum: 0.0
99.0 => D.L2;

// L3: initial: 99.0, minimum: 99.0, maximum: 0.0
99.0 => D.L3;

// L4: initial: 0.0, minimum: 99.0, maximum: 0.0
0.0 => D.L4;

// R1: initial: 99.0, minimum: 99.0, maximum: 0.0
99.0 => D.R1;

// R2: initial: 99.0, minimum: 99.0, maximum: 0.0
99.0 => D.R2;

// R3: initial: 99.0, minimum: 99.0, maximum: 0.0
99.0 => D.R3;

// R4: initial: 99.0, minimum: 99.0, maximum: 0.0
99.0 => D.R4;

// Level: initial: 0.0, minimum: 99.0, maximum: 0.0
0.0 => D.Level;

// Key_Vel: initial: 0.0, minimum: 7.0, maximum: 0.0
0.0 => D.Key_Vel;

// A_Mod_Sens: initial: 0.0, minimum: 3.0, maximum: 0.0
0.0 => D.A_Mod_Sens;

// Rate_Scaling: initial: 0.0, minimum: 7.0, maximum: 0.0
0.0 => D.Rate_Scaling;

// Breakpoint: initial: 0.0, minimum: 99.0, maximum: 0.0
0.0 => D.Breakpoint;

// L_Depth: initial: 0.0, minimum: 99.0, maximum: 0.0
0.0 => D.L_Depth;

// R_Depth: initial: 0.0, minimum: 99.0, maximum: 0.0
0.0 => D.R_Depth;

// L_Curve: initial: 0.0, minimum: 3.0, maximum: 0.0
0.0 => D.L_Curve;

// R_Curve: initial: 0.0, minimum: 3.0, maximum: 0.0
0.0 => D.R_Curve;

// Tune: initial: 0.0, minimum: 7.0, maximum: -7.0
0.0 => D.Tune;

// Coarse: initial: 1.0, minimum: 31.0, maximum: 0.0
1.0 => D.Coarse;

// Fine: initial: 0.0, minimum: 99.0, maximum: 0.0
0.0 => D.Fine;

// Freq_Mode
1.0 => D.Freq_Mode;

// L1: initial: 99.0, minimum: 99.0, maximum: 0.0
99.0 => D.L1;

// L2: initial: 99.0, minimum: 99.0, maximum: 0.0
99.0 => D.L2;

// L3: initial: 99.0, minimum: 99.0, maximum: 0.0
99.0 => D.L3;

// L4: initial: 0.0, minimum: 99.0, maximum: 0.0
0.0 => D.L4;

// R1: initial: 99.0, minimum: 99.0, maximum: 0.0
99.0 => D.R1;

// R2: initial: 99.0, minimum: 99.0, maximum: 0.0
99.0 => D.R2;

// R3: initial: 99.0, minimum: 99.0, maximum: 0.0
99.0 => D.R3;

// R4: initial: 99.0, minimum: 99.0, maximum: 0.0
99.0 => D.R4;

// Level: initial: 0.0, minimum: 99.0, maximum: 0.0
0.0 => D.Level;

// Key_Vel: initial: 0.0, minimum: 7.0, maximum: 0.0
0.0 => D.Key_Vel;

// A_Mod_Sens: initial: 0.0, minimum: 3.0, maximum: 0.0
0.0 => D.A_Mod_Sens;

// Rate_Scaling: initial: 0.0, minimum: 7.0, maximum: 0.0
0.0 => D.Rate_Scaling;

// Breakpoint: initial: 0.0, minimum: 99.0, maximum: 0.0
0.0 => D.Breakpoint;

// L_Depth: initial: 0.0, minimum: 99.0, maximum: 0.0
0.0 => D.L_Depth;

// R_Depth: initial: 0.0, minimum: 99.0, maximum: 0.0
0.0 => D.R_Depth;

// L_Curve: initial: 0.0, minimum: 3.0, maximum: 0.0
0.0 => D.L_Curve;

// R_Curve: initial: 0.0, minimum: 3.0, maximum: 0.0
0.0 => D.R_Curve;

// Tune: initial: 0.0, minimum: 7.0, maximum: -7.0
0.0 => D.Tune;

// Coarse: initial: 1.0, minimum: 31.0, maximum: 0.0
1.0 => D.Coarse;

// Fine: initial: 0.0, minimum: 99.0, maximum: 0.0
0.0 => D.Fine;

// Freq_Mode
1.0 => D.Freq_Mode;

// L1: initial: 99.0, minimum: 99.0, maximum: 0.0
99.0 => D.L1;

// L2: initial: 99.0, minimum: 99.0, maximum: 0.0
99.0 => D.L2;

// L3: initial: 99.0, minimum: 99.0, maximum: 0.0
99.0 => D.L3;

// L4: initial: 0.0, minimum: 99.0, maximum: 0.0
0.0 => D.L4;

// R1: initial: 99.0, minimum: 99.0, maximum: 0.0
99.0 => D.R1;

// R2: initial: 99.0, minimum: 99.0, maximum: 0.0
99.0 => D.R2;

// R3: initial: 99.0, minimum: 99.0, maximum: 0.0
99.0 => D.R3;

// R4: initial: 99.0, minimum: 99.0, maximum: 0.0
99.0 => D.R4;

// Level: initial: 0.0, minimum: 99.0, maximum: 0.0
0.0 => D.Level;

// Key_Vel: initial: 0.0, minimum: 7.0, maximum: 0.0
0.0 => D.Key_Vel;

// A_Mod_Sens: initial: 0.0, minimum: 3.0, maximum: 0.0
0.0 => D.A_Mod_Sens;

// Rate_Scaling: initial: 0.0, minimum: 7.0, maximum: 0.0
0.0 => D.Rate_Scaling;

// Breakpoint: initial: 0.0, minimum: 99.0, maximum: 0.0
0.0 => D.Breakpoint;

// L_Depth: initial: 0.0, minimum: 99.0, maximum: 0.0
0.0 => D.L_Depth;

// R_Depth: initial: 0.0, minimum: 99.0, maximum: 0.0
0.0 => D.R_Depth;

// L_Curve: initial: 0.0, minimum: 3.0, maximum: 0.0
0.0 => D.L_Curve;

// R_Curve: initial: 0.0, minimum: 3.0, maximum: 0.0
0.0 => D.R_Curve;

// freq: initial: 400.0, minimum: 1000.0, maximum: 50.0
400.0 => D.freq;

// gain: initial: 0.8, minimum: 1.0, maximum: 0.0
0.8 => D.gain;

// gate
1.0 => D.gate;

5::second => now;
