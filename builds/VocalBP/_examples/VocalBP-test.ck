@import "../VocalBP.chug"

Vocal_BandPass V => dac;

// freq: initial: 440.0, minimum: 1000.0, maximum: 50.0
440.0 => V.freq;

// gain: initial: 0.9, minimum: 1.0, maximum: 0.0
0.9 => V.gain;

// voiceType: initial: 0.0, minimum: 4.0, maximum: 0.0
0.0 => V.voiceType;

// vowel: initial: 0.0, minimum: 4.0, maximum: 0.0
0.0 => V.vowel;

// fricative: initial: 0.0, minimum: 1.0, maximum: 0.0
0.0 => V.fricative;

// vibratoFreq: initial: 6.0, minimum: 10.0, maximum: 1.0
6.0 => V.vibratoFreq;

// vibratoGain: initial: 0.5, minimum: 1.0, maximum: 0.0
0.5 => V.vibratoGain;

5::second => now;
