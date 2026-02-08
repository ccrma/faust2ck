@import "../Sitar.chug"

Sitar S => dac;

// freq: initial: 440.0, minimum: 20000.0, maximum: 20.0
440.0 => S.freq;

// gain: initial: 1.0, minimum: 1.0, maximum: 0.0
1.0 => S.gain;

// gate
1.0 => S.gate;

// Resonance: initial: 0.7, minimum: 1.0, maximum: 0.0
0.7 => S.Resonance;

// reverbGain: initial: 0.1, minimum: 1.0, maximum: 0.0
0.1 => S.reverbGain;

// roomSize: initial: 0.7, minimum: 2.0, maximum: 0.0
0.7 => S.roomSize;

// pan_angle: initial: 0.6, minimum: 1.0, maximum: 0.0
0.6 => S.pan_angle;

// spatial_width: initial: 0.5, minimum: 1.0, maximum: 0.0
0.5 => S.spatial_width;

5::second => now;
