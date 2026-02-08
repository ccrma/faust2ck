@import "../LowShelf.chug"

SndBuf buf => lowShelf l => dac;
"special:dope" => buf.read;

// Freq: initial: 1000.0, minimum: 10000.0, maximum: 100.0
1000.0 => l.Freq;

// Gain: initial: 0.0, minimum: 10.0, maximum: -10.0
0.0 => l.Gain;

// Q: initial: 1.0, minimum: 100.0, maximum: 0.0
1.0 => l.Q;

5::second => now;
