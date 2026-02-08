@import "../ElecGuitar.chug"

ElecGuitar E => dac;

// bend: initial: 1.0, minimum: 10.0, maximum: 0.0
1.0 => E.bend;

// freq: initial: 300.0, minimum: 2000.0, maximum: 50.0
300.0 => E.freq;

// gain: initial: 1.0, minimum: 1.0, maximum: 0.0
1.0 => E.gain;

// gate
1.0 => E.gate;

// sustain: initial: 0.0, minimum: 1.0, maximum: 0.0
0.0 => E.sustain;

5::second => now;
