@import "../1dDampedWaveEquation.chug"

dDampedWaveEquation d => dac;

// Input_Point: initial: 50.0, minimum: 99.0, maximum: 0.0
50.0 => d.Input_Point;

// Output_Point: initial: 50.0, minimum: 99.0, maximum: 0.0
50.0 => d.Output_Point;

// Play
1.0 => d.Play;

5::second => now;
