@import "../BowedOsc.chug"

Bowed_Oscillator B => dac;

// Bow_Position: initial: 0.0, minimum: 100.0, maximum: 0.0
0.0 => B.Bow_Position;

5::second => now;
