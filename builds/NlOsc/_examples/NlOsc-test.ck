@import "../NlOsc.chug"

Non_Linear_Oscillator N => dac;

// Hammer_Input_Force
1.0 => N.Hammer_Input_Force;

// nonlinear_stiffness: initial: 0.0, minimum: 0.1, maximum: 0.0
0.0 => N.nonlinear_stiffness;

5::second => now;
