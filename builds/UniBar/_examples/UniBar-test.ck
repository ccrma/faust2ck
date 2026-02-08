@import "../UniBar.chug"

UniBar U => dac;

// freq: initial: 440.0, minimum: 20000.0, maximum: 20.0
440.0 => U.freq;

// gain: initial: 0.8, minimum: 1.0, maximum: 0.0
0.8 => U.gain;

// gate
1.0 => U.gate;

// Base_Gain: initial: 1.0, minimum: 1.0, maximum: 0.0
1.0 => U.Base_Gain;

// Bow_Pressure: initial: 0.2, minimum: 1.0, maximum: 0.0
0.2 => U.Bow_Pressure;

// Excitation_Selector: initial: 0.0, minimum: 1.0, maximum: 0.0
0.0 => U.Excitation_Selector;

// Integration_Constant: initial: 0.0, minimum: 1.0, maximum: 0.0
0.0 => U.Integration_Constant;

// reverbGain: initial: 0.1, minimum: 1.0, maximum: 0.0
0.1 => U.reverbGain;

// roomSize: initial: 0.7, minimum: 2.0, maximum: 0.0
0.7 => U.roomSize;

// pan_angle: initial: 0.6, minimum: 1.0, maximum: 0.0
0.6 => U.pan_angle;

// spatial_width: initial: 0.5, minimum: 1.0, maximum: 0.0
0.5 => U.spatial_width;

5::second => now;
