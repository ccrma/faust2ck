@import "../BlowBottle.chug"

blowBottle b => dac;

// freq: initial: 440.0, minimum: 20000.0, maximum: 20.0
440.0 => b.freq;

// gain: initial: 1.0, minimum: 1.0, maximum: 0.0
1.0 => b.gain;

// gate
1.0 => b.gate;

// Envelope_Attack: initial: 0.0, minimum: 2.0, maximum: 0.0
0.0 => b.Envelope_Attack;

// Envelope_Release: initial: 0.5, minimum: 2.0, maximum: 0.0
0.5 => b.Envelope_Release;

// Vibrato_Attack: initial: 0.5, minimum: 2.0, maximum: 0.0
0.5 => b.Vibrato_Attack;

// Vibrato_Begin: initial: 0.1, minimum: 2.0, maximum: 0.0
0.1 => b.Vibrato_Begin;

// Vibrato_Freq: initial: 5.0, minimum: 15.0, maximum: 1.0
5.0 => b.Vibrato_Freq;

// Vibrato_Gain: initial: 0.1, minimum: 1.0, maximum: 0.0
0.1 => b.Vibrato_Gain;

// Vibrato_Release: initial: 0.0, minimum: 2.0, maximum: 0.0
0.0 => b.Vibrato_Release;

// Modulation_Frequency: initial: 220.0, minimum: 1000.0, maximum: 20.0
220.0 => b.Modulation_Frequency;

// Modulation_Type: initial: 0.0, minimum: 4.0, maximum: 0.0
0.0 => b.Modulation_Type;

// Nonlinearity: initial: 0.0, minimum: 1.0, maximum: 0.0
0.0 => b.Nonlinearity;

// Nonlinearity_Attack: initial: 0.1, minimum: 2.0, maximum: 0.0
0.1 => b.Nonlinearity_Attack;

// Noise_Gain: initial: 0.5, minimum: 1.0, maximum: 0.0
0.5 => b.Noise_Gain;

// Pressure: initial: 1.0, minimum: 1.0, maximum: 0.0
1.0 => b.Pressure;

// reverbGain: initial: 0.1, minimum: 1.0, maximum: 0.0
0.1 => b.reverbGain;

// roomSize: initial: 0.7, minimum: 2.0, maximum: 0.0
0.7 => b.roomSize;

// pan_angle: initial: 0.6, minimum: 1.0, maximum: 0.0
0.6 => b.pan_angle;

// spatial_width: initial: 0.5, minimum: 1.0, maximum: 0.0
0.5 => b.spatial_width;

5::second => now;
