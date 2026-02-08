@import "../Target.chug"

SndBuf buf => Target T => dac;
"special:dope" => buf.read;

// alpha: initial: 1.0, minimum: 1.0, maximum: 0.0
1.0 => T.alpha;

5::second => now;
