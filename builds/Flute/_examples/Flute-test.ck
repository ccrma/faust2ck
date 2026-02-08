@import "../Flute.chug"

Flute F => dac;

// pressure: initial: 0.0, minimum: 1.0, maximum: 0.0
0.0 => F.pressure;

// breathGain: initial: 0.1, minimum: 1.0, maximum: 0.0
0.1 => F.breathGain;

// breathCutoff: initial: 2000.0, minimum: 20000.0, maximum: 20.0
2000.0 => F.breathCutoff;

// vibratoFreq: initial: 5.0, minimum: 10.0, maximum: 0.1
5.0 => F.vibratoFreq;

// vibratoGain: initial: 0.2, minimum: 1.0, maximum: 0.0
0.2 => F.vibratoGain;

// tubeLength: initial: 0.8, minimum: 3.0, maximum: 0.0
0.8 => F.tubeLength;

// mouthPosition: initial: 0.5, minimum: 1.0, maximum: 0.0
0.5 => F.mouthPosition;

// outGain: initial: 0.5, minimum: 1.0, maximum: 0.0
0.5 => F.outGain;

5::second => now;
