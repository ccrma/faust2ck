@import "../Spat.chug"

SndBuf buf => spat s => dac;
"special:dope" => buf.read;

// angle: initial: 0.0, minimum: 1.0, maximum: 0.0
0.0 => s.angle;

// distance: initial: 0.5, minimum: 1.0, maximum: 0.0
0.5 => s.distance;

5::second => now;
