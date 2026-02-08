@import "../Flanger.chug"

SndBuf buf => flanger f => dac;
"special:dope" => buf.read;

// Bypass
1.0 => f.Bypass;

// Invert_Flange_Sum
1.0 => f.Invert_Flange_Sum;

// Speed: initial: 0.5, minimum: 10.0, maximum: 0.0
0.5 => f.Speed;

// Depth: initial: 1.0, minimum: 1.0, maximum: 0.0
1.0 => f.Depth;

// Feedback: initial: 0.0, minimum: 1.0, maximum: -1.0
0.0 => f.Feedback;

// Flange_Delay: initial: 10.0, minimum: 20.0, maximum: 0.0
10.0 => f.Flange_Delay;

// Delay_Offset: initial: 1.0, minimum: 20.0, maximum: 0.0
1.0 => f.Delay_Offset;

// Flanger_Output_Level: initial: 0.0, minimum: 10.0, maximum: -60.0
0.0 => f.Flanger_Output_Level;

// Flange_LFO: initial: 1.0, minimum: 1.5, maximum: -1.5
1.0 => f.Flange_LFO;

5::second => now;
