@import "../MoogLadder.chug"

moogLadder m => dac;

// Q: initial: 1.0, minimum: 25.0, maximum: 0.7
1.0 => m.Q;

// SawNoise
1.0 => m.SawNoise;

// freq: initial: 0.1, minimum: 1.0, maximum: 0.0
0.1 => m.freq;

5::second => now;
