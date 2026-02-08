@import "../SmoothDelay.chug"

SndBuf buf => smoothDelay s => dac;
"special:dope" => buf.read;

// delay: initial: 0.0, minimum: 5000.0, maximum: 0.0
0.0 => s.delay;

// feedback: initial: 0.0, minimum: 100.0, maximum: 0.0
0.0 => s.feedback;

// interpolation: initial: 10.0, minimum: 100.0, maximum: 1.0
10.0 => s.interpolation;

5::second => now;
