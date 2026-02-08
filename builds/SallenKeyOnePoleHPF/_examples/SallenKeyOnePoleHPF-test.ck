@import "../SallenKeyOnePoleHPF.chug"

sallenKeyOnePoleHPF s => dac;

// SawNoise
1.0 => s.SawNoise;

// freq: initial: 0.5, minimum: 1.0, maximum: 0.0
0.5 => s.freq;

5::second => now;
