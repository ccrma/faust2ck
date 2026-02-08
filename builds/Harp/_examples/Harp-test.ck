@import "../Harp.chug"

harp h => dac;

// freq: initial: 400.0, minimum: 2000.0, maximum: 50.0
400.0 => h.freq;

// gate
1.0 => h.gate;

// res: initial: 2.0, minimum: 4.0, maximum: 0.1
2.0 => h.res;

5::second => now;
