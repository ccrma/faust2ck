@import "../ViolinMIDI.chug"

ViolinMidi V => dac;

// freq: initial: 440.0, minimum: 1000.0, maximum: 50.0
440.0 => V.freq;

// bend: initial: 0.0, minimum: 2.0, maximum: -2.0
0.0 => V.bend;

// gain: initial: 0.6, minimum: 1.0, maximum: 0.0
0.6 => V.gain;

// envAttack: initial: 1.0, minimum: 30.0, maximum: 0.0
1.0 => V.envAttack;

// sustain: initial: 0.0, minimum: 1.0, maximum: 0.0
0.0 => V.sustain;

// pressure: initial: 0.5, minimum: 1.0, maximum: 0.0
0.5 => V.pressure;

// position: initial: 0.7, minimum: 1.0, maximum: 0.0
0.7 => V.position;

// vibratoFrequency: initial: 6.0, minimum: 10.0, maximum: 1.0
6.0 => V.vibratoFrequency;

// vibratoGain: initial: 0.5, minimum: 1.0, maximum: 0.0
0.5 => V.vibratoGain;

// outGain: initial: 0.5, minimum: 1.0, maximum: 0.0
0.5 => V.outGain;

// gate
1.0 => V.gate;

5::second => now;
