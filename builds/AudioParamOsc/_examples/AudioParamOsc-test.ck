@import "../AudioParamOsc.chug"

Audio_Param_Oscillator A => dac;

// Damping: initial: 0.0, minimum: 0.0, maximum: 0.0
0.0 => A.Damping;

// Force_Impulse
1.0 => A.Force_Impulse;

// Stiffness: initial: 0.0, minimum: 0.1, maximum: 0.0
0.0 => A.Stiffness;

5::second => now;
