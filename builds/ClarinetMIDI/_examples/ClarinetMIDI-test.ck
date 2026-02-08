@import "../ClarinetMIDI.chug"

ClarinetMIDI C => dac;

// freq: initial: 440.0, minimum: 1000.0, maximum: 50.0
440.0 => C.freq;

// bend: initial: 0.0, minimum: 2.0, maximum: -2.0
0.0 => C.bend;

// gain: initial: 0.6, minimum: 1.0, maximum: 0.0
0.6 => C.gain;

// envAttack: initial: 1.0, minimum: 30.0, maximum: 0.0
1.0 => C.envAttack;

// sustain: initial: 0.0, minimum: 1.0, maximum: 0.0
0.0 => C.sustain;

// reedStiffness: initial: 0.5, minimum: 1.0, maximum: 0.0
0.5 => C.reedStiffness;

// bellOpening: initial: 0.5, minimum: 1.0, maximum: 0.0
0.5 => C.bellOpening;

// vibratoFreq: initial: 5.0, minimum: 10.0, maximum: 1.0
5.0 => C.vibratoFreq;

// vibratoGain: initial: 0.2, minimum: 1.0, maximum: 0.0
0.2 => C.vibratoGain;

// outGain: initial: 0.5, minimum: 1.0, maximum: 0.0
0.5 => C.outGain;

// gate
1.0 => C.gate;

5::second => now;
