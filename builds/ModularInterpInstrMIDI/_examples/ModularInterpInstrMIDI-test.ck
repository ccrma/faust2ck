@import "../ModularInterpInstrMIDI.chug"

ModularInterpInstrMidi M => dac;

// freq: initial: 440.0, minimum: 1000.0, maximum: 50.0
440.0 => M.freq;

// bend: initial: 0.0, minimum: 2.0, maximum: -2.0
0.0 => M.bend;

// gain: initial: 0.8, minimum: 1.0, maximum: 0.0
0.8 => M.gain;

// sustain: initial: 0.0, minimum: 1.0, maximum: 0.0
0.0 => M.sustain;

// shape: initial: 0.0, minimum: 1.0, maximum: 0.0
0.0 => M.shape;

// scale: initial: 0.0, minimum: 1.0, maximum: 0.0
0.0 => M.scale;

// tapBody
1.0 => M.tapBody;

// pluckPosition: initial: 0.8, minimum: 1.0, maximum: 0.0
0.8 => M.pluckPosition;

// outGain: initial: 0.5, minimum: 1.0, maximum: 0.0
0.5 => M.outGain;

// gate
1.0 => M.gate;

5::second => now;
