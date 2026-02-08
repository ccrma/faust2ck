@import "../Violin.chug"

Violin V => dac;

// kb0bend: initial: 1.0, minimum: 10.0, maximum: 0.0
1.0 => V.kb0bend;

// kb0fingers: initial: 0.0, minimum: 10.0, maximum: 0.0
0.0 => V.kb0fingers;

// kb0freq: initial: 220.0, minimum: 10000.0, maximum: 20.0
220.0 => V.kb0freq;

// kb1bend: initial: 1.0, minimum: 10.0, maximum: 0.0
1.0 => V.kb1bend;

// kb1fingers: initial: 0.0, minimum: 10.0, maximum: 0.0
0.0 => V.kb1fingers;

// kb1freq: initial: 330.0, minimum: 10000.0, maximum: 20.0
330.0 => V.kb1freq;

// kb2bend: initial: 1.0, minimum: 10.0, maximum: 0.0
1.0 => V.kb2bend;

// kb2fingers: initial: 0.0, minimum: 10.0, maximum: 0.0
0.0 => V.kb2fingers;

// kb2freq: initial: 440.0, minimum: 10000.0, maximum: 20.0
440.0 => V.kb2freq;

// kb3bend: initial: 1.0, minimum: 10.0, maximum: 0.0
1.0 => V.kb3bend;

// kb3fingers: initial: 0.0, minimum: 10.0, maximum: 0.0
0.0 => V.kb3fingers;

// kb3freq: initial: 550.0, minimum: 10000.0, maximum: 20.0
550.0 => V.kb3freq;

// kb4k0x: initial: 0.0, minimum: 1.0, maximum: 0.0
0.0 => V.kb4k0x;

// kb4k0y: initial: 0.0, minimum: 1.0, maximum: 0.0
0.0 => V.kb4k0y;

5::second => now;
