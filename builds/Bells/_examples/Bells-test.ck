@import "../Bells.chug"

Bells B => dac;

// kb0k0status: initial: 0.0, minimum: 1.0, maximum: 0.0
0.0 => B.kb0k0status;

// kb0k1status: initial: 0.0, minimum: 1.0, maximum: 0.0
0.0 => B.kb0k1status;

// kb1k0status: initial: 0.0, minimum: 1.0, maximum: 0.0
0.0 => B.kb1k0status;

// kb1k1status: initial: 0.0, minimum: 1.0, maximum: 0.0
0.0 => B.kb1k1status;

// x: initial: 1.0, minimum: 1.0, maximum: 0.0
1.0 => B.x;

// y: initial: 1.0, minimum: 1.0, maximum: 0.0
1.0 => B.y;

5::second => now;
