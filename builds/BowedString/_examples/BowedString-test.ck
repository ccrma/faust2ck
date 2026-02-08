@import "../BowedString.chug"

Bowed_String B => dac;

// Bow_Position: initial: 0.0, minimum: 1.0, maximum: -1.0
0.0 => B.Bow_Position;

// Bow_Pressure: initial: 0.3, minimum: 0.5, maximum: 0.0
0.3 => B.Bow_Pressure;

// String_Stiffness: initial: 0.3, minimum: 0.7, maximum: 0.0
0.3 => B.String_Stiffness;

5::second => now;
