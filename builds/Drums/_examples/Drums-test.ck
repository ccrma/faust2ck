@import "../Drums.chug"

Drums D => dac;

// gate
1.0 => D.gate;

// key: initial: 0.0, minimum: 1.0, maximum: 0.0
0.0 => D.key;

// keyboard: initial: 0.0, minimum: 1.0, maximum: 0.0
0.0 => D.keyboard;

// x: initial: 1.0, minimum: 1.0, maximum: 0.0
1.0 => D.x;

// y: initial: 1.0, minimum: 1.0, maximum: 0.0
1.0 => D.y;

5::second => now;
