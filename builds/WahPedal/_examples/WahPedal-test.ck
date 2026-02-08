@import "../WahPedal.chug"

SndBuf buf => wahPedal w => dac;
"special:dope" => buf.read;

// Bypass
1.0 => w.Bypass;

// Resonance_Frequency: initial: 200.0, minimum: 2000.0, maximum: 100.0
200.0 => w.Resonance_Frequency;

5::second => now;
