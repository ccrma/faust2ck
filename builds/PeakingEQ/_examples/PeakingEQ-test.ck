@import "../PeakingEQ.chug"

SndBuf buf => peakingEQ p => dac;
"special:dope" => buf.read;

// Freq: initial: 1000.0, minimum: 10000.0, maximum: 100.0
1000.0 => p.Freq;

// Gain: initial: 0.0, minimum: 10.0, maximum: -10.0
0.0 => p.Gain;

// Q: initial: 1.0, minimum: 100.0, maximum: 0.0
1.0 => p.Q;

5::second => now;
