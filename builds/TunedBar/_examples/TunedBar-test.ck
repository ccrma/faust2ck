@import "../TunedBar.chug"

tunedBar t => dac;

// freq: initial: 440.0, minimum: 20000.0, maximum: 20.0
440.0 => t.freq;

// gain: initial: 0.8, minimum: 1.0, maximum: 0.0
0.8 => t.gain;

// gate
1.0 => t.gate;

// Modulation_Frequency: initial: 220.0, minimum: 1000.0, maximum: 20.0
220.0 => t.Modulation_Frequency;

// Modulation_Type: initial: 0.0, minimum: 4.0, maximum: 0.0
0.0 => t.Modulation_Type;

// Nonlinearity: initial: 0.0, minimum: 1.0, maximum: 0.0
0.0 => t.Nonlinearity;

// Base_Gain: initial: 1.0, minimum: 1.0, maximum: 0.0
1.0 => t.Base_Gain;

// Bow_Pressure: initial: 0.2, minimum: 1.0, maximum: 0.0
0.2 => t.Bow_Pressure;

// Excitation_Selector: initial: 0.0, minimum: 1.0, maximum: 0.0
0.0 => t.Excitation_Selector;

// Integration_Constant: initial: 0.0, minimum: 1.0, maximum: 0.0
0.0 => t.Integration_Constant;

// reverbGain: initial: 0.1, minimum: 1.0, maximum: 0.0
0.1 => t.reverbGain;

// roomSize: initial: 0.7, minimum: 2.0, maximum: 0.0
0.7 => t.roomSize;

// pan_angle: initial: 0.6, minimum: 1.0, maximum: 0.0
0.6 => t.pan_angle;

// spatial_width: initial: 0.5, minimum: 1.0, maximum: 0.0
0.5 => t.spatial_width;

5::second => now;
