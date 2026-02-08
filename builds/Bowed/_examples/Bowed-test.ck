@import "../Bowed.chug"

Bowed B => dac;

// bend: initial: 1.0, minimum: 10.0, maximum: 0.0
1.0 => B.bend;

// freq: initial: 400.0, minimum: 2000.0, maximum: 50.0
400.0 => B.freq;

// keyboard: initial: 0.0, minimum: 5.0, maximum: 0.0
0.0 => B.keyboard;

// x: initial: 0.5, minimum: 1.0, maximum: 0.0
0.5 => B.x;

// y: initial: 0.0, minimum: 1.0, maximum: 0.0
0.0 => B.y;

5::second => now;
