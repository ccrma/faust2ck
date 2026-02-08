@import "../HPF.chug"

SndBuf buf => HPF H => dac;
"special:dope" => buf.read;

// Freq: initial: 1000.0, minimum: 10000.0, maximum: 100.0
1000.0 => H.Freq;

// Q: initial: 1.0, minimum: 100.0, maximum: 0.0
1.0 => H.Q;

5::second => now;
