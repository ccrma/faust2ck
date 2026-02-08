@import "../OneSourceToStereo.chug"

SndBuf buf => oneSourceToStereo o => dac;
"special:dope" => buf.read;

// Angle: initial: 0.0, minimum: 6.3, maximum: -6.3
0.0 => o.Angle;

// Radius: initial: 1.0, minimum: 5.0, maximum: 0.0
1.0 => o.Radius;

5::second => now;
