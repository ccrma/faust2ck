@import "../QuadEcho.chug"

SndBuf buf => quadEcho q => dac;
"special:dope" => buf.read;

// feedback: initial: 0.0, minimum: 100.0, maximum: 0.0
0.0 => q.feedback;

// millisecond: initial: 0.0, minimum: 1000.0, maximum: 0.0
0.0 => q.millisecond;

5::second => now;
