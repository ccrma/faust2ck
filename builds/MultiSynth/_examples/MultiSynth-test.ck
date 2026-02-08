@import "../MultiSynth.chug"

MultiSynth M => dac;

// bend: initial: 0.0, minimum: 2.0, maximum: -2.0
0.0 => M.bend;

// freq: initial: 300.0, minimum: 2000.0, maximum: 50.0
300.0 => M.freq;

// gain: initial: 1.0, minimum: 1.0, maximum: 0.0
1.0 => M.gain;

// gate
1.0 => M.gate;

// keyboard: initial: 0.0, minimum: 3.0, maximum: 0.0
0.0 => M.keyboard;

// sustain: initial: 0.0, minimum: 1.0, maximum: 0.0
0.0 => M.sustain;

// y: initial: 1.0, minimum: 1.0, maximum: 0.0
1.0 => M.y;

5::second => now;
