@import "../DiodeLadder.chug"

diodeLadder d => dac;

// Q: initial: 1.0, minimum: 25.0, maximum: 0.7
1.0 => d.Q;

// SawNoise
1.0 => d.SawNoise;

// freq: initial: 0.1, minimum: 1.0, maximum: 0.0
0.1 => d.freq;

5::second => now;
