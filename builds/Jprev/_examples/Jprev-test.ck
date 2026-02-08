@import "../Jprev.chug"

SndBuf buf => jprev j => dac;
"special:dope" => buf.read;

// earlyDiff: initial: 0.7, minimum: 1.0, maximum: 0.0
0.7 => j.earlyDiff;

// size: initial: 1.0, minimum: 3.0, maximum: 0.5
1.0 => j.size;

// t60: initial: 1.0, minimum: 60.0, maximum: 0.1
1.0 => j.t60;

// damp: initial: 0.0, minimum: 1.0, maximum: 0.0
0.0 => j.damp;

// lowX: initial: 1.0, minimum: 1.0, maximum: 0.0
1.0 => j.lowX;

// midX: initial: 1.0, minimum: 1.0, maximum: 0.0
1.0 => j.midX;

// highX: initial: 1.0, minimum: 1.0, maximum: 0.0
1.0 => j.highX;

// lowBand: initial: 500.0, minimum: 6000.0, maximum: 100.0
500.0 => j.lowBand;

// highBand: initial: 2000.0, minimum: 10000.0, maximum: 1000.0
2000.0 => j.highBand;

// mDepth: initial: 0.1, minimum: 1.0, maximum: 0.0
0.1 => j.mDepth;

// mFreq: initial: 2.0, minimum: 10.0, maximum: 0.0
2.0 => j.mFreq;

5::second => now;
