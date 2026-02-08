@import "../VocalFOFMIDI.chug"

Vocal_FOF_MIDI V => dac;

// freq: initial: 440.0, minimum: 1000.0, maximum: 50.0
440.0 => V.freq;

// bend: initial: 0.0, minimum: 2.0, maximum: -2.0
0.0 => V.bend;

// gain: initial: 0.9, minimum: 1.0, maximum: 0.0
0.9 => V.gain;

// envAttack: initial: 10.0, minimum: 30.0, maximum: 0.0
10.0 => V.envAttack;

// sustain: initial: 0.0, minimum: 1.0, maximum: 0.0
0.0 => V.sustain;

// voiceType: initial: 0.0, minimum: 4.0, maximum: 0.0
0.0 => V.voiceType;

// vowel: initial: 0.0, minimum: 4.0, maximum: 0.0
0.0 => V.vowel;

// vibratoFreq: initial: 6.0, minimum: 10.0, maximum: 1.0
6.0 => V.vibratoFreq;

// vibratoGain: initial: 0.5, minimum: 1.0, maximum: 0.0
0.5 => V.vibratoGain;

// outGain: initial: 0.5, minimum: 1.0, maximum: 0.0
0.5 => V.outGain;

// gate
1.0 => V.gate;

5::second => now;
