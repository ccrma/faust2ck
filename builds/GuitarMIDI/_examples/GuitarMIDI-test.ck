@import "../GuitarMIDI.chug"

GuitarMidi G => dac;

// freq: initial: 440.0, minimum: 1000.0, maximum: 50.0
440.0 => G.freq;

// bend: initial: 0.0, minimum: 2.0, maximum: -2.0
0.0 => G.bend;

// gain: initial: 0.8, minimum: 1.0, maximum: 0.0
0.8 => G.gain;

// sustain: initial: 0.0, minimum: 1.0, maximum: 0.0
0.0 => G.sustain;

// gate
1.0 => G.gate;

// outGain: initial: 0.5, minimum: 1.0, maximum: 0.0
0.5 => G.outGain;

// pluckPosition: initial: 0.8, minimum: 1.0, maximum: 0.0
0.8 => G.pluckPosition;

5::second => now;
