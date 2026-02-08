@import "../PhysicalLFO.chug"

Physical_LFO P => dac;

// Excite_String
1.0 => P.Excite_String;

// output_gain: initial: 0.0, minimum: 0.0, maximum: 0.0
0.0 => P.output_gain;

// string_damping: initial: 0.0, minimum: 0.0, maximum: 0.0
0.0 => P.string_damping;

// string_stiffness: initial: 0.0, minimum: 0.0, maximum: 0.0
0.0 => P.string_stiffness;

5::second => now;
