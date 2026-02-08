@import "../HarmonicOscillator.chug"

Harmonic_Oscillator H => dac;

// Frc_Input_1
1.0 => H.Frc_Input_1;

5::second => now;
