@import "../Distortion.chug"

SndBuf buf => distortion d => dac;
"special:dope" => buf.read;

// Bypass
1.0 => d.Bypass;

// Drive: initial: 0.0, minimum: 1.0, maximum: 0.0
0.0 => d.Drive;

// Offset: initial: 0.0, minimum: 1.0, maximum: 0.0
0.0 => d.Offset;

5::second => now;
