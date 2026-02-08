@import "../Panner.chug"

SndBuf buf => Panner P => dac;
"special:dope" => buf.read;

// pan: initial: 0.5, minimum: 1.0, maximum: 0.0
0.5 => P.pan;

5::second => now;
