@import "../PianoHammeredString.chug"

PianoHammeredString P => dac;

// Input_Point: initial: 38.0, minimum: 76.0, maximum: 0.0
38.0 => P.Input_Point;

// Output_Point: initial: 38.0, minimum: 76.0, maximum: 0.0
38.0 => P.Output_Point;

// Play
1.0 => P.Play;

5::second => now;
