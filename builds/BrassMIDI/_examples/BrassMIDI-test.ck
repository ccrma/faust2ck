@import "../BrassMIDI.chug"

BrassMIDI B => dac;

// freq: initial: 440.0, minimum: 1000.0, maximum: 50.0
440.0 => B.freq;

// bend: initial: 0.0, minimum: 2.0, maximum: -2.0
0.0 => B.bend;

// gain: initial: 0.5, minimum: 1.0, maximum: 0.0
0.5 => B.gain;

// envAttack: initial: 1.0, minimum: 30.0, maximum: 0.0
1.0 => B.envAttack;

// sustain: initial: 0.0, minimum: 1.0, maximum: 0.0
0.0 => B.sustain;

// lipsTension: initial: 0.5, minimum: 1.0, maximum: 0.0
0.5 => B.lipsTension;

// mute: initial: 0.5, minimum: 1.0, maximum: 0.0
0.5 => B.mute;

// vibratoFreq: initial: 5.0, minimum: 10.0, maximum: 1.0
5.0 => B.vibratoFreq;

// vibratoGain: initial: 0.5, minimum: 1.0, maximum: 0.0
0.5 => B.vibratoGain;

// outGain: initial: 0.5, minimum: 1.0, maximum: 0.0
0.5 => B.outGain;

// gate
1.0 => B.gate;

5::second => now;
