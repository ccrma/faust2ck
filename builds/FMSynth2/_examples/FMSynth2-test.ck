@import "../FMSynth2.chug"

FMSynth2 F => dac;

// A: initial: 0.0, minimum: 4.0, maximum: 0.0
0.0 => F.A;

// D: initial: 0.6, minimum: 8.0, maximum: 0.0
0.6 => F.D;

// R: initial: 0.8, minimum: 8.0, maximum: 0.0
0.8 => F.R;

// S: initial: 0.2, minimum: 1.0, maximum: 0.0
0.2 => F.S;

// bend: initial: 0.0, minimum: 2.0, maximum: -2.0
0.0 => F.bend;

// feedb: initial: 0.0, minimum: 1.0, maximum: 0.0
0.0 => F.feedb;

// freq: initial: 440.0, minimum: 20000.0, maximum: 20.0
440.0 => F.freq;

// gain: initial: 1.0, minimum: 1.0, maximum: 0.0
1.0 => F.gain;

// gate
1.0 => F.gate;

// ratio: initial: 2.0, minimum: 20.0, maximum: 0.0
2.0 => F.ratio;

5::second => now;
