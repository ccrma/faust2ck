@import "../StereoEcho.chug"

SndBuf buf => stereoEcho s => dac;
"special:dope" => buf.read;

// feedback: initial: 0.0, minimum: 100.0, maximum: 0.0
0.0 => s.feedback;

// millisecond: initial: 0.0, minimum: 1000.0, maximum: 0.0
0.0 => s.millisecond;

5::second => now;
