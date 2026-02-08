@import "../LfBoost.chug"

SndBuf buf => lfboost l => dac;
"special:dope" => buf.read;

// freq: initial: 100.0, minimum: 150.0, maximum: 20.0
100.0 => l.freq;

// gain: initial: 0.0, minimum: 20.0, maximum: -20.0
0.0 => l.gain;

5::second => now;
