@import "../Echo.chug"

SndBuf buf => echo e => dac;
"special:dope" => buf.read;

// feedback: initial: 0.0, minimum: 100.0, maximum: 0.0
0.0 => e.feedback;

// millisecond: initial: 0.0, minimum: 1000.0, maximum: 0.0
0.0 => e.millisecond;

5::second => now;
