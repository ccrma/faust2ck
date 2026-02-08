@import "../Vocal.chug"

Vocal V => dac;

// gain: initial: 0.2, minimum: 1.0, maximum: 0.0
0.2 => V.gain;

// vibrato: initial: 0.1, minimum: 0.1, maximum: 0.0
0.1 => V.vibrato;

// vowel: initial: 2.0, minimum: 4.0, maximum: 0.0
2.0 => V.vowel;

// x: initial: 0.5, minimum: 1.0, maximum: 0.0
0.5 => V.x;

5::second => now;
