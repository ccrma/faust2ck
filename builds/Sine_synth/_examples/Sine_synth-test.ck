@import "../Sine_synth.chug"

Sine_synth S => dac;

// bend: initial: 0.0, minimum: 2.0, maximum: -2.0
0.0 => S.bend;

// freq: initial: 392.0, minimum: 450.0, maximum: 200.0
392.0 => S.freq;

// gain: initial: 1.0, minimum: 1.0, maximum: 0.0
1.0 => S.gain;

// gate
1.0 => S.gate;

5::second => now;
