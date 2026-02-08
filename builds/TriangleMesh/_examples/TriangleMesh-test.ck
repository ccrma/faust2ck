@import "../TriangleMesh.chug"

Plucked_Triangle P => dac;

// Air_Friction: initial: 0.0, minimum: 0.0, maximum: 0.0
0.0 => P.Air_Friction;

// Mesh_Damping: initial: 0.0, minimum: 0.0, maximum: 0.0
0.0 => P.Mesh_Damping;

// Mesh_Stiffness: initial: 0.1, minimum: 0.3, maximum: 0.0
0.1 => P.Mesh_Stiffness;

// Pluck_Position: initial: 0.0, minimum: 1.0, maximum: -1.0
0.0 => P.Pluck_Position;

5::second => now;
