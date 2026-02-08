@import "../FilterOsc.chug"

filterOSC f => dac;

// Amplitude: initial: -20.0, minimum: 10.0, maximum: -120.0
-20.0 => f.Amplitude;

// Frequency: initial: 49.0, minimum: 88.0, maximum: 1.0
49.0 => f.Frequency;

// Portamento: initial: 0.1, minimum: 10.0, maximum: 0.0
0.1 => f.Portamento;

5::second => now;
