@import "../Brass.chug"

Brass B => dac;

// kb0k0x: initial: 0.0, minimum: 1.0, maximum: 0.0
0.0 => B.kb0k0x;

// kb1k0status: initial: 0.0, minimum: 1.0, maximum: 0.0
0.0 => B.kb1k0status;

// kb1k1status: initial: 0.0, minimum: 1.0, maximum: 0.0
0.0 => B.kb1k1status;

// kb1k2status: initial: 0.0, minimum: 1.0, maximum: 0.0
0.0 => B.kb1k2status;

// pressure: initial: 0.0, minimum: 1.0, maximum: 0.0
0.0 => B.pressure;

5::second => now;
