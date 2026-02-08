@import "../OberheimHPF.chug"

oberheimHPF o => dac;

// Q: initial: 1.0, minimum: 10.0, maximum: 0.5
1.0 => o.Q;

// SawNoise
1.0 => o.SawNoise;

// freq: initial: 0.5, minimum: 1.0, maximum: 0.0
0.5 => o.freq;

5::second => now;
