@import "../ParamOsc.chug"

Param_Oscillator P => dac;

// Frc_Input_1
1.0 => P.Frc_Input_1;

5::second => now;
