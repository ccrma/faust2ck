@import "../PluckedOsc.chug"

Plucked_Oscillator P => dac;

// Pluck_Position: initial: 0.0, minimum: 1.0, maximum: -1.0
0.0 => P.Pluck_Position;

5::second => now;
