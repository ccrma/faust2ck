@import "../NLFeks.chug"

NLFeks N => dac;

// typeMod: initial: 0.0, minimum: 4.0, maximum: 0.0
0.0 => N.typeMod;

// Nonlinearity: initial: 0.0, minimum: 1.0, maximum: 0.0
0.0 => N.Nonlinearity;

// reverbGain: initial: 0.1, minimum: 1.0, maximum: 0.0
0.1 => N.reverbGain;

// roomSize: initial: 0.7, minimum: 2.0, maximum: 0.0
0.7 => N.roomSize;

// pan_angle: initial: 0.6, minimum: 1.0, maximum: 0.0
0.6 => N.pan_angle;

// spatial_width: initial: 0.5, minimum: 1.0, maximum: 0.0
0.5 => N.spatial_width;

// brightness: initial: 0.5, minimum: 1.0, maximum: 0.0
0.5 => N.brightness;

// decaytime_T60: initial: 4.0, minimum: 10.0, maximum: 0.0
4.0 => N.decaytime_T60;

// freq: initial: 440.0, minimum: 7040.0, maximum: 20.0
440.0 => N.freq;

// freqMod: initial: 220.0, minimum: 1000.0, maximum: 20.0
220.0 => N.freqMod;

// gain: initial: 1.0, minimum: 10.0, maximum: 0.0
1.0 => N.gain;

// gate
1.0 => N.gate;

// pick_angle: initial: 0.0, minimum: 0.9, maximum: 0.0
0.0 => N.pick_angle;

// pick_position: initial: 0.1, minimum: 0.5, maximum: 0.0
0.1 => N.pick_position;

5::second => now;
