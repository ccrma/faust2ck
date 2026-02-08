@import "../Vital_rev.chug"

SndBuf buf => vital_rev v => dac;
"special:dope" => buf.read;

// Low_Cutoff: initial: 0.0, minimum: 1.0, maximum: 0.0
0.0 => v.Low_Cutoff;

// High_Cutoff: initial: 0.8, minimum: 1.0, maximum: 0.0
0.8 => v.High_Cutoff;

// Low_Shelf: initial: 0.0, minimum: 1.0, maximum: 0.0
0.0 => v.Low_Shelf;

// Low_Gain: initial: 1.0, minimum: 1.0, maximum: 0.0
1.0 => v.Low_Gain;

// High_Shelf: initial: 0.6, minimum: 1.0, maximum: 0.0
0.6 => v.High_Shelf;

// High_Gain: initial: 0.8, minimum: 1.0, maximum: 0.0
0.8 => v.High_Gain;

// Amount: initial: 0.0, minimum: 1.0, maximum: 0.0
0.0 => v.Amount;

// Rate: initial: 0.1, minimum: 1.0, maximum: 0.0
0.1 => v.Rate;

// PreDelay: initial: 0.0, minimum: 1.0, maximum: 0.0
0.0 => v.PreDelay;

// Decay_Time: initial: 0.5, minimum: 1.0, maximum: 0.0
0.5 => v.Decay_Time;

// Size: initial: 0.5, minimum: 1.0, maximum: 0.0
0.5 => v.Size;

// Mix: initial: 1.0, minimum: 1.0, maximum: 0.0
1.0 => v.Mix;

5::second => now;
