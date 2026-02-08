@import "../WaveSynth_Analog.chug"

WaveSynth_Analog W => dac;

// A: initial: 0.0, minimum: 4.0, maximum: 0.0
0.0 => W.A;

// D: initial: 0.6, minimum: 8.0, maximum: 0.0
0.6 => W.D;

// R: initial: 0.8, minimum: 8.0, maximum: 0.0
0.8 => W.R;

// S: initial: 0.2, minimum: 1.0, maximum: 0.0
0.2 => W.S;

// bend: initial: 0.0, minimum: 2.0, maximum: -2.0
0.0 => W.bend;

// freq: initial: 440.0, minimum: 20000.0, maximum: 20.0
440.0 => W.freq;

// gain: initial: 0.5, minimum: 1.0, maximum: 0.0
0.5 => W.gain;

// gate
1.0 => W.gate;

// lfoDepth: initial: 0.0, minimum: 1.0, maximum: 0.0
0.0 => W.lfoDepth;

// lfoFreq: initial: 0.1, minimum: 10.0, maximum: 0.0
0.1 => W.lfoFreq;

// waveTravel: initial: 0.0, minimum: 1.0, maximum: 0.0
0.0 => W.waveTravel;

5::second => now;
