@import "../CrazyGuiro.chug"

CrazyGuiro C => dac;

// gate
1.0 => C.gate;

// key: initial: 0.0, minimum: 2.0, maximum: 0.0
0.0 => C.key;

// keyboard: initial: 0.0, minimum: 2.0, maximum: 0.0
0.0 => C.keyboard;

// res: initial: 0.5, minimum: 1.0, maximum: 0.0
0.5 => C.res;

// wet: initial: 0.0, minimum: 1.0, maximum: 0.0
0.0 => C.wet;

5::second => now;
