@import "../CryBaby.chug"

SndBuf buf => cryBaby c => dac;
"special:dope" => buf.read;

// Bypass
1.0 => c.Bypass;

// Wah_parameter: initial: 0.8, minimum: 1.0, maximum: 0.0
0.8 => c.Wah_parameter;

5::second => now;
