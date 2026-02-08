@import "../FluteMIDI.chug"

FluteMIDI F => dac;

// freq: initial: 440.0, minimum: 1000.0, maximum: 50.0
440.0 => F.freq;

// bend: initial: 0.0, minimum: 2.0, maximum: -2.0
0.0 => F.bend;

// gain: initial: 0.9, minimum: 1.0, maximum: 0.0
0.9 => F.gain;

// envAttack: initial: 1.0, minimum: 30.0, maximum: 0.0
1.0 => F.envAttack;

// sustain: initial: 0.0, minimum: 1.0, maximum: 0.0
0.0 => F.sustain;

// mouthPosition: initial: 0.5, minimum: 1.0, maximum: 0.0
0.5 => F.mouthPosition;

// vibratoFreq: initial: 5.0, minimum: 10.0, maximum: 1.0
5.0 => F.vibratoFreq;

// vibratoGain: initial: 0.5, minimum: 1.0, maximum: 0.0
0.5 => F.vibratoGain;

// outGain: initial: 0.5, minimum: 1.0, maximum: 0.0
0.5 => F.outGain;

// gate
1.0 => F.gate;

5::second => now;
