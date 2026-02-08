@import "../NLFfm.chug"

NLFfm N => dac;

// freq: initial: 440.0, minimum: 20000.0, maximum: 20.0
440.0 => N.freq;

// gain: initial: 0.8, minimum: 1.0, maximum: 0.0
0.8 => N.gain;

// gate
1.0 => N.gate;

// Envelope_Attack: initial: 0.1, minimum: 2.0, maximum: 0.0
0.1 => N.Envelope_Attack;

// Envelope_Decay: initial: 0.1, minimum: 2.0, maximum: 0.0
0.1 => N.Envelope_Decay;

// Envelope_Release: initial: 0.1, minimum: 2.0, maximum: 0.0
0.1 => N.Envelope_Release;

// Vibrato_Attack: initial: 0.5, minimum: 2.0, maximum: 0.0
0.5 => N.Vibrato_Attack;

// Vibrato_Freq: initial: 5.0, minimum: 15.0, maximum: 1.0
5.0 => N.Vibrato_Freq;

// Vibrato_Gain: initial: 0.1, minimum: 1.0, maximum: 0.0
0.1 => N.Vibrato_Gain;

// Vibrato_Release: initial: 0.0, minimum: 2.0, maximum: 0.0
0.0 => N.Vibrato_Release;

// Modulation_Frequency: initial: 220.0, minimum: 1000.0, maximum: 20.0
220.0 => N.Modulation_Frequency;

// Modulation_Type: initial: 0.0, minimum: 4.0, maximum: 0.0
0.0 => N.Modulation_Type;

// Nonlinearity: initial: 0.0, minimum: 1.0, maximum: 0.0
0.0 => N.Nonlinearity;

// Nonlinearity_Attack: initial: 0.1, minimum: 2.0, maximum: 0.0
0.1 => N.Nonlinearity_Attack;

// reverbGain: initial: 0.1, minimum: 1.0, maximum: 0.0
0.1 => N.reverbGain;

// roomSize: initial: 0.7, minimum: 2.0, maximum: 0.0
0.7 => N.roomSize;

// pan_angle: initial: 0.6, minimum: 1.0, maximum: 0.0
0.6 => N.pan_angle;

// spatial_width: initial: 0.5, minimum: 1.0, maximum: 0.0
0.5 => N.spatial_width;

5::second => now;
