@import "../StiffString.chug"

StiffString S => dac;

// Input_Point: initial: 50.0, minimum: 99.0, maximum: 0.0
50.0 => S.Input_Point;

// Output_Point: initial: 50.0, minimum: 99.0, maximum: 0.0
50.0 => S.Output_Point;

// Play
1.0 => S.Play;

5::second => now;
