@import "../ElecGuitarMIDI.chug"

ElecGuitarMidi E => dac;

// freq: initial: 440.0, minimum: 1000.0, maximum: 50.0
440.0 => E.freq;

// bend: initial: 0.0, minimum: 2.0, maximum: -2.0
0.0 => E.bend;

// gain: initial: 0.8, minimum: 1.0, maximum: 0.0
0.8 => E.gain;

// sustain: initial: 0.0, minimum: 1.0, maximum: 0.0
0.0 => E.sustain;

// pluckPosition: initial: 0.8, minimum: 1.0, maximum: 0.0
0.8 => E.pluckPosition;

// outGain: initial: 0.5, minimum: 1.0, maximum: 0.0
0.5 => E.outGain;

// gate
1.0 => E.gate;

5::second => now;
