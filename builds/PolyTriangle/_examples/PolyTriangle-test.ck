@import "../PolyTriangle.chug"

Polyphonic_Triangles P => dac;

// Model_Damping: initial: 0.0, minimum: 0.0, maximum: 0.0
0.0 => P.Model_Damping;

// Model_Stiffness: initial: 0.1, minimum: 0.3, maximum: 0.0
0.1 => P.Model_Stiffness;

// freq: initial: 200.0, minimum: 1000.0, maximum: 50.0
200.0 => P.freq;

// gate
1.0 => P.gate;

5::second => now;
