@import "../Phaser.chug"

SndBuf buf => phaser p => dac;
"special:dope" => buf.read;

// Bypass
1.0 => p.Bypass;

// Invert_Internal_Phaser_Sum
1.0 => p.Invert_Internal_Phaser_Sum;

// Vibrato_Mode
1.0 => p.Vibrato_Mode;

// Speed: initial: 0.5, minimum: 10.0, maximum: 0.0
0.5 => p.Speed;

// Notch_Depth_Intensity: initial: 1.0, minimum: 1.0, maximum: 0.0
1.0 => p.Notch_Depth_Intensity;

// Feedback_Gain: initial: 0.0, minimum: 1.0, maximum: -1.0
0.0 => p.Feedback_Gain;

// Notch_width: initial: 1000.0, minimum: 5000.0, maximum: 10.0
1000.0 => p.Notch_width;

// Min_Notch1_Freq: initial: 100.0, minimum: 5000.0, maximum: 20.0
100.0 => p.Min_Notch1_Freq;

// Max_Notch1_Freq: initial: 800.0, minimum: 10000.0, maximum: 20.0
800.0 => p.Max_Notch1_Freq;

// Notch_Freq_Ratio_NotchFreqn1NotchFreqn: initial: 1.5, minimum: 4.0, maximum: 1.1
1.5 => p.Notch_Freq_Ratio_NotchFreqn1NotchFreqn;

// Phaser_Output_Level: initial: 0.0, minimum: 10.0, maximum: -60.0
0.0 => p.Phaser_Output_Level;

5::second => now;
