@import "../MoogVCF.chug"

SndBuf buf => moogVCF m => dac;
"special:dope" => buf.read;

// Bypass
1.0 => m.Bypass;

// Use_Biquads
1.0 => m.Use_Biquads;

// Normalized_Ladders
1.0 => m.Normalized_Ladders;

// Corner_Frequency: initial: 25.0, minimum: 88.0, maximum: 1.0
25.0 => m.Corner_Frequency;

// Corner_Resonance: initial: 0.9, minimum: 1.0, maximum: 0.0
0.9 => m.Corner_Resonance;

// VCF_Output_Level: initial: 5.0, minimum: 20.0, maximum: -60.0
5.0 => m.VCF_Output_Level;

5::second => now;
