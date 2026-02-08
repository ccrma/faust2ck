@import "../NylonGuitarMIDI.chug"

NylonGuitarMidi N => dac;

// freq: initial: 440.0, minimum: 1000.0, maximum: 50.0
440.0 => N.freq;

// bend: initial: 0.0, minimum: 2.0, maximum: -2.0
0.0 => N.bend;

// gain: initial: 0.8, minimum: 1.0, maximum: 0.0
0.8 => N.gain;

// sustain: initial: 0.0, minimum: 1.0, maximum: 0.0
0.0 => N.sustain;

// gate
1.0 => N.gate;

// outGain: initial: 0.5, minimum: 1.0, maximum: 0.0
0.5 => N.outGain;

// pluckPosition: initial: 0.8, minimum: 1.0, maximum: 0.0
0.8 => N.pluckPosition;

5::second => now;
