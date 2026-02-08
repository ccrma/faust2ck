@import "../Saxophony.chug"

saxophony s => dac;

// freq: initial: 440.0, minimum: 20000.0, maximum: 20.0
440.0 => s.freq;

// gain: initial: 1.0, minimum: 1.0, maximum: 0.0
1.0 => s.gain;

// gate
1.0 => s.gate;

// Envelope_Attack: initial: 0.1, minimum: 2.0, maximum: 0.0
0.1 => s.Envelope_Attack;

// Envelope_Release: initial: 0.0, minimum: 2.0, maximum: 0.0
0.0 => s.Envelope_Release;

// Vibrato_Freq: initial: 6.0, minimum: 15.0, maximum: 1.0
6.0 => s.Vibrato_Freq;

// Vibrato_Gain: initial: 0.1, minimum: 1.0, maximum: 0.0
0.1 => s.Vibrato_Gain;

// Modulation_Frequency: initial: 220.0, minimum: 1000.0, maximum: 20.0
220.0 => s.Modulation_Frequency;

// Modulation_Type: initial: 0.0, minimum: 4.0, maximum: 0.0
0.0 => s.Modulation_Type;

// Nonlinearity: initial: 0.0, minimum: 1.0, maximum: 0.0
0.0 => s.Nonlinearity;

// Nonlinearity_Attack: initial: 0.1, minimum: 2.0, maximum: 0.0
0.1 => s.Nonlinearity_Attack;

// Blow_Position: initial: 0.5, minimum: 1.0, maximum: 0.0
0.5 => s.Blow_Position;

// Noise_Gain: initial: 0.1, minimum: 1.0, maximum: 0.0
0.1 => s.Noise_Gain;

// Pressure: initial: 1.0, minimum: 1.0, maximum: 0.0
1.0 => s.Pressure;

// Reed_Stiffness: initial: 0.3, minimum: 1.0, maximum: 0.0
0.3 => s.Reed_Stiffness;

// reverbGain: initial: 0.1, minimum: 1.0, maximum: 0.0
0.1 => s.reverbGain;

// roomSize: initial: 0.7, minimum: 2.0, maximum: 0.0
0.7 => s.roomSize;

// pan_angle: initial: 0.6, minimum: 1.0, maximum: 0.0
0.6 => s.pan_angle;

// spatial_width: initial: 0.5, minimum: 1.0, maximum: 0.0
0.5 => s.spatial_width;

5::second => now;
