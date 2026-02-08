@import "../Toy.chug"

Toy T => dac;

// del: initial: 0.5, minimum: 1.0, maximum: 0.0
0.5 => T.del;

// fb: initial: 0.5, minimum: 1.0, maximum: 0.0
0.5 => T.fb;

// q: initial: 30.0, minimum: 50.0, maximum: 10.0
30.0 => T.q;

// x0: initial: 0.5, minimum: 1.0, maximum: 0.0
0.5 => T.x0;

// y0: initial: 0.5, minimum: 1.0, maximum: 0.0
0.5 => T.y0;

// y1: initial: 0.0, minimum: 1.0, maximum: 0.0
0.0 => T.y1;

5::second => now;
