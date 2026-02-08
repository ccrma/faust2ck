@import "../ControllableNonPhysicalString.chug"

ControllableNonPhysicalString C => dac;

// Input_Point: initial: 50.0, minimum: 99.0, maximum: 0.0
50.0 => C.Input_Point;

// Output_Point: initial: 50.0, minimum: 99.0, maximum: 0.0
50.0 => C.Output_Point;

// Play
1.0 => C.Play;

// String_Tension_N: initial: 150.0, minimum: 1000.0, maximum: 20.0
150.0 => C.String_Tension_N;

// String_Radius_m: initial: 0.0, minimum: 0.0, maximum: 0.0
0.0 => C.String_Radius_m;

// String_Material_Density_kgm3: initial: 8050.0, minimum: 1000000.0, maximum: 10.0
8050.0 => C.String_Material_Density_kgm3;

// String_Young_Modulus_Pa: initial: 1740000.0, minimum: 100000000.0, maximum: 0.0
1740000.0 => C.String_Young_Modulus_Pa;

// Damping: initial: 0.0, minimum: 100.0, maximum: 0.0
0.0 => C.Damping;

// Frequency_Dependent_Damping: initial: 0.0, minimum: 1.0, maximum: 0.0
0.0 => C.Frequency_Dependent_Damping;

5::second => now;
