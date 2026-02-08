@import "../SimpleSynth_FX.chug"

SimpleSynth_FX S => dac;

// attack: initial: 0.1, minimum: 400.0, maximum: 0.1
0.1 => S.attack;

// bend: initial: 0.0, minimum: 2.0, maximum: -2.0
0.0 => S.bend;

// decay: initial: 60.0, minimum: 400.0, maximum: 0.1
60.0 => S.decay;

// envMod: initial: 50.0, minimum: 100.0, maximum: 0.0
50.0 => S.envMod;

// fc: initial: 15.0, minimum: 12000.0, maximum: 15.0
15.0 => S.fc;

// freq: initial: 440.0, minimum: 20000.0, maximum: 20.0
440.0 => S.freq;

// gain: initial: 0.5, minimum: 0.5, maximum: 0.0
0.5 => S.gain;

// gate
1.0 => S.gate;

// lfoFreq: initial: 6.0, minimum: 10.0, maximum: 0.0
6.0 => S.lfoFreq;

// modwheel: initial: 0.0, minimum: 0.5, maximum: 0.0
0.0 => S.modwheel;

// release: initial: 100.0, minimum: 400.0, maximum: 0.1
100.0 => S.release;

// resonnance: initial: 0.5, minimum: 1.0, maximum: 0.0
0.5 => S.resonnance;

// sustain: initial: 0.1, minimum: 1.0, maximum: 0.0
0.1 => S.sustain;

// tracking: initial: 1.0, minimum: 2.0, maximum: 0.0
1.0 => S.tracking;

// waveform: initial: 0.5, minimum: 1.0, maximum: 0.0
0.5 => S.waveform;

5::second => now;
