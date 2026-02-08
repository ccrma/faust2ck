@import "../Turenas.chug"

turenas t => dac;

// freq: initial: 400.0, minimum: 2000.0, maximum: 50.0
400.0 => t.freq;

// gate
1.0 => t.gate;

// res: initial: 2.5, minimum: 5.0, maximum: 0.0
2.5 => t.res;

// y: initial: 0.0, minimum: 1.0, maximum: 0.0
0.0 => t.y;

5::second => now;
