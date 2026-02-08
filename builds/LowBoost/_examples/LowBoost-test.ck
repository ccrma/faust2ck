@import "../LowBoost.chug"

SndBuf buf => lowboost l => dac;
"special:dope" => buf.read;

// freq: initial: 1000.0, minimum: 20000.0, maximum: 20.0
1000.0 => l.freq;

// gain: initial: 0.0, minimum: 20.0, maximum: -20.0
0.0 => l.gain;

5::second => now;
