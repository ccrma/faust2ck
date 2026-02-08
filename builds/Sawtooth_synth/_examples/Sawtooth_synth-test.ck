@import "../Sawtooth_synth.chug"

Sawtooth_synth S => dac;

// Ctrl_Value_IN_Ctrl_1: initial: 60.0, minimum: 127.0, maximum: 0.0
60.0 => S.Ctrl_Value_IN_Ctrl_1;

// bend: initial: 1.0, minimum: 10.0, maximum: 0.0
1.0 => S.bend;

// freq: initial: 200.0, minimum: 2000.0, maximum: 40.0
200.0 => S.freq;

// gain: initial: 1.0, minimum: 1.0, maximum: 0.0
1.0 => S.gain;

// gate
1.0 => S.gate;

5::second => now;
