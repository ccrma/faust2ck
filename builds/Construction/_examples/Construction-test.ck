@import "../Construction.chug"

Strange_Physical_Construction S => dac;

// Force_Impulse
1.0 => S.Force_Impulse;

// Force_Scaling: initial: 0.5, minimum: 0.9, maximum: 0.0
0.5 => S.Force_Scaling;

// Mesh_Damping: initial: 0.0, minimum: 0.0, maximum: 0.0
0.0 => S.Mesh_Damping;

// Mesh_Stiffness: initial: 0.1, minimum: 0.2, maximum: 0.0
0.1 => S.Mesh_Stiffness;

// Triangle_Damping: initial: 0.0, minimum: 0.0, maximum: 0.0
0.0 => S.Triangle_Damping;

// Triangle_Stiffness: initial: 0.1, minimum: 0.2, maximum: 0.0
0.1 => S.Triangle_Stiffness;

5::second => now;
