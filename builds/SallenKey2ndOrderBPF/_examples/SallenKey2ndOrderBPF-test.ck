@import "../SallenKey2ndOrderBPF.chug"

sallenKey2ndOrderBPF s => dac;

// Q: initial: 1.0, minimum: 10.0, maximum: 0.5
1.0 => s.Q;

// SawNoise
1.0 => s.SawNoise;

// freq: initial: 0.5, minimum: 1.0, maximum: 0.0
0.5 => s.freq;

5::second => now;
