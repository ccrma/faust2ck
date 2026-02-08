@import "../Korg35HPF.chug"

korg35HPF k => dac;

// Q: initial: 1.0, minimum: 10.0, maximum: 0.5
1.0 => k.Q;

// SawNoise
1.0 => k.SawNoise;

// freq: initial: 0.5, minimum: 1.0, maximum: 0.0
0.5 => k.freq;

5::second => now;
