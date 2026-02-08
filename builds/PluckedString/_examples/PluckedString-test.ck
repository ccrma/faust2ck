@import "../PluckedString.chug"

Plucked_String P => dac;

// Pick_position: initial: 0.0, minimum: 1.0, maximum: -1.0
0.0 => P.Pick_position;

// pick_damping: initial: 0.0, minimum: 0.1, maximum: 0.0
0.0 => P.pick_damping;

// pick_stiffness: initial: 0.5, minimum: 0.8, maximum: 0.0
0.5 => P.pick_stiffness;

// string_air_friction: initial: 0.0, minimum: 0.0, maximum: 0.0
0.0 => P.string_air_friction;

// string_internal_damping: initial: 0.0, minimum: 0.0, maximum: 0.0
0.0 => P.string_internal_damping;

// string_stiffness: initial: 0.7, minimum: 0.7, maximum: 0.0
0.7 => P.string_stiffness;

5::second => now;
