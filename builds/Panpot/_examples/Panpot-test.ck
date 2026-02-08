@import "../Panpot.chug"

SndBuf buf => panpot p => dac;
"special:dope" => buf.read;

// pan: initial: 0.0, minimum: 90.0, maximum: -90.0
0.0 => p.pan;

5::second => now;
