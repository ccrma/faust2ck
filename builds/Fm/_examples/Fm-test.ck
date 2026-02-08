@import "../Fm.chug"

fm f => dac;

// gate
1.0 => f.gate;

// res: initial: 1.0, minimum: 2.0, maximum: 0.0
1.0 => f.res;

// x: initial: 0.0, minimum: 1.0, maximum: 0.0
0.0 => f.x;

// y: initial: 0.0, minimum: 1.0, maximum: 0.0
0.0 => f.y;

5::second => now;
