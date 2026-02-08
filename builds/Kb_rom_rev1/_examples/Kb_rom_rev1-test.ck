@import "../Kb_rom_rev1.chug"

SndBuf buf => kb_rom_rev1 k => dac;
"special:dope" => buf.read;

// Decay_Time: initial: 0.8, minimum: 1.0, maximum: 0.0
0.8 => k.Decay_Time;

// High_Cutoff: initial: 0.5, minimum: 1.0, maximum: 0.0
0.5 => k.High_Cutoff;

// DryWet_Mix: initial: 1.0, minimum: 1.0, maximum: 0.0
1.0 => k.DryWet_Mix;

5::second => now;
