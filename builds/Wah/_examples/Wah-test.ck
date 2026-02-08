@import "../Wah.chug"

SndBuf buf => Wah W => dac;
"special:dope" => buf.read;

// Bypass
1.0 => W.Bypass;

// Resonance_Frequency: initial: 200.0, minimum: 2000.0, maximum: 100.0
200.0 => W.Resonance_Frequency;

5::second => now;
