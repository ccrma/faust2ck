@import "../QuantizedChords.chug"

quantizedChords q => dac;

// gain: initial: -10.0, minimum: 0.0, maximum: -60.0
-10.0 => q.gain;

// quantization: initial: 0.0, minimum: 2.0, maximum: 0.0
0.0 => q.quantization;

5::second => now;
