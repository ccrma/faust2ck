@import "../HammeredString.chug"

HammeredString H => dac;

// Input_Point: initial: 50.0, minimum: 99.0, maximum: 0.0
50.0 => H.Input_Point;

// Output_Point: initial: 50.0, minimum: 99.0, maximum: 0.0
50.0 => H.Output_Point;

// Play
1.0 => H.Play;

5::second => now;
