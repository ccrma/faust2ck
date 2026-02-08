@import "../Frog.chug"

frog f => dac;

// cutoff: initial: 2500.0, minimum: 5000.0, maximum: 50.0
2500.0 => f.cutoff;

// gate
1.0 => f.gate;

// x: initial: 0.0, minimum: 1.0, maximum: 0.0
0.0 => f.x;

// y: initial: 0.0, minimum: 1.0, maximum: 0.0
0.0 => f.y;

5::second => now;
