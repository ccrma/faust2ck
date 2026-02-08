@import "../Trumpet.chug"

Trumpet T => dac;

// bend: initial: 0.0, minimum: 2.0, maximum: -2.0
0.0 => T.bend;

// freq: initial: 300.0, minimum: 2000.0, maximum: 50.0
300.0 => T.freq;

// gain: initial: 1.0, minimum: 1.0, maximum: 0.0
1.0 => T.gain;

// gate
1.0 => T.gate;

// sustain: initial: 0.0, minimum: 1.0, maximum: 0.0
0.0 => T.sustain;

// y: initial: 1.0, minimum: 1.0, maximum: 0.0
1.0 => T.y;

5::second => now;
