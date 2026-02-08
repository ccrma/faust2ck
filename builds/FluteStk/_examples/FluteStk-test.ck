@import "../FluteStk.chug"

fluteStk f => dac;

// freq: initial: 440.0, minimum: 20000.0, maximum: 20.0
440.0 => f.freq;

// gain: initial: 1.0, minimum: 1.0, maximum: 0.0
1.0 => f.gain;

// gate
1.0 => f.gate;

// Envelope_Attack: initial: 0.0, minimum: 2.0, maximum: 0.0
0.0 => f.Envelope_Attack;

// Envelope_Decay: initial: 0.0, minimum: 2.0, maximum: 0.0
0.0 => f.Envelope_Decay;

// Envelope_Release: initial: 0.3, minimum: 2.0, maximum: 0.0
0.3 => f.Envelope_Release;

// Vibrato_Attack: initial: 0.5, minimum: 2.0, maximum: 0.0
0.5 => f.Vibrato_Attack;

// Vibrato_Begin: initial: 0.1, minimum: 2.0, maximum: 0.0
0.1 => f.Vibrato_Begin;

// Vibrato_Freq: initial: 6.0, minimum: 15.0, maximum: 1.0
6.0 => f.Vibrato_Freq;

// Vibrato_Gain: initial: 0.1, minimum: 1.0, maximum: 0.0
0.1 => f.Vibrato_Gain;

// Vibrato_Release: initial: 0.1, minimum: 2.0, maximum: 0.0
0.1 => f.Vibrato_Release;

// Modulation_Frequency: initial: 220.0, minimum: 1000.0, maximum: 20.0
220.0 => f.Modulation_Frequency;

// Modulation_Type: initial: 0.0, minimum: 4.0, maximum: 0.0
0.0 => f.Modulation_Type;

// Nonlinearity: initial: 0.0, minimum: 1.0, maximum: 0.0
0.0 => f.Nonlinearity;

// Nonlinearity_Attack: initial: 0.1, minimum: 2.0, maximum: 0.0
0.1 => f.Nonlinearity_Attack;

// Embouchure_Ajust: initial: 0.5, minimum: 1.0, maximum: 0.0
0.5 => f.Embouchure_Ajust;

// Noise_Gain: initial: 0.0, minimum: 1.0, maximum: 0.0
0.0 => f.Noise_Gain;

// Pressure: initial: 1.0, minimum: 1.0, maximum: 0.0
1.0 => f.Pressure;

// reverbGain: initial: 0.1, minimum: 1.0, maximum: 0.0
0.1 => f.reverbGain;

// roomSize: initial: 0.7, minimum: 2.0, maximum: 0.0
0.7 => f.roomSize;

// pan_angle: initial: 0.6, minimum: 1.0, maximum: 0.0
0.6 => f.pan_angle;

// spatial_width: initial: 0.5, minimum: 1.0, maximum: 0.0
0.5 => f.spatial_width;

5::second => now;
