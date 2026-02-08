@import "../ReverbTank.chug"

SndBuf buf => reverbTank r => dac;
"special:dope" => buf.read;

// Delay: initial: 0.0, minimum: 100.0, maximum: 0.0
0.0 => r.Delay;

// LPF_Cutoff: initial: 16.0, minimum: 20.0, maximum: 1.0
16.0 => r.LPF_Cutoff;

// APF_Delay: initial: 28.0, minimum: 100.0, maximum: 0.0
28.0 => r.APF_Delay;

// Fixed_Delay: initial: 81.0, minimum: 100.0, maximum: 0.0
81.0 => r.Fixed_Delay;

// Reverb_Time: initial: 0.5, minimum: 1.0, maximum: 0.0
0.5 => r.Reverb_Time;

// LFO_Depth: initial: 0.0, minimum: 0.3, maximum: 0.0
0.0 => r.LFO_Depth;

// LPF_Cutoff: initial: 15.0, minimum: 20.0, maximum: 1.0
15.0 => r.LPF_Cutoff;

// Low_Shelf: initial: 16.0, minimum: 135.0, maximum: 16.0
16.0 => r.Low_Shelf;

// Low_Gain: initial: -20.0, minimum: 20.0, maximum: -20.0
-20.0 => r.Low_Gain;

// High_Shelf: initial: 90.0, minimum: 135.0, maximum: 16.0
90.0 => r.High_Shelf;

// High_Gain: initial: -6.0, minimum: 20.0, maximum: -20.0
-6.0 => r.High_Gain;

// Wet: initial: 1.0, minimum: 1.0, maximum: 0.0
1.0 => r.Wet;

5::second => now;
