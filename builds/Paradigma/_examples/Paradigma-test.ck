@import "../Paradigma.chug"

Paradigma_9 P => dac;

// x: initial: -12.0, minimum: 36.0, maximum: -36.0
-12.0 => P.x;

// z: initial: 19.0, minimum: 36.0, maximum: -36.0
19.0 => P.z;

// Feedback: initial: 0.2, minimum: 1.0, maximum: 0.0
0.2 => P.Feedback;

// Detune: initial: 0.1, minimum: 0.5, maximum: 0.0
0.1 => P.Detune;

// A: initial: 20.0, minimum: 66.0, maximum: 15.0
20.0 => P.A;

// D: initial: 74.0, minimum: 100.0, maximum: 26.0
74.0 => P.D;

// S: initial: 0.0, minimum: 1.0, maximum: 0.0
0.0 => P.S;

// R: initial: 50.0, minimum: 100.0, maximum: 26.0
50.0 => P.R;

// LFO_Hz: initial: 3.0, minimum: 12.0, maximum: 0.1
3.0 => P.LFO_Hz;

// Vibrato: initial: 0.1, minimum: 1.0, maximum: 0.0
0.1 => P.Vibrato;

// Rise: initial: 3.0, minimum: 9.0, maximum: 1.0
3.0 => P.Rise;

// Fall: initial: 6.0, minimum: 9.0, maximum: 1.0
6.0 => P.Fall;

// Q: initial: 1.0, minimum: 3.9, maximum: 0.5
1.0 => P.Q;

// Drive: initial: -12.0, minimum: 30.0, maximum: -12.0
-12.0 => P.Drive;

// bend: initial: 0.0, minimum: 2.0, maximum: -2.0
0.0 => P.bend;

// freq: initial: 200.0, minimum: 2000.0, maximum: 40.0
200.0 => P.freq;

// gain: initial: 0.6, minimum: 1.0, maximum: 0.0
0.6 => P.gain;

// gate
1.0 => P.gate;

5::second => now;
