@import "../Reverb.chug"

SndBuf buf => Reverb R => dac;
"special:dope" => buf.read;

// In_Delay: initial: 60.0, minimum: 100.0, maximum: 20.0
60.0 => R.In_Delay;

// LF_X: initial: 200.0, minimum: 1000.0, maximum: 50.0
200.0 => R.LF_X;

// Low_RT60: initial: 3.0, minimum: 8.0, maximum: 1.0
3.0 => R.Low_RT60;

// Mid_RT60: initial: 2.0, minimum: 8.0, maximum: 1.0
2.0 => R.Mid_RT60;

// HF_Damping: initial: 6000.0, minimum: 23520.0, maximum: 1500.0
6000.0 => R.HF_Damping;

// Eq1_Freq: initial: 315.0, minimum: 2500.0, maximum: 40.0
315.0 => R.Eq1_Freq;

// Eq1_Level: initial: 0.0, minimum: 15.0, maximum: -15.0
0.0 => R.Eq1_Level;

// Eq2_Freq: initial: 1500.0, minimum: 10000.0, maximum: 160.0
1500.0 => R.Eq2_Freq;

// Eq2_Level: initial: 0.0, minimum: 15.0, maximum: -15.0
0.0 => R.Eq2_Level;

// WetDry_Mix: initial: 0.0, minimum: 1.0, maximum: -1.0
0.0 => R.WetDry_Mix;

// Level: initial: -20.0, minimum: 40.0, maximum: -70.0
-20.0 => R.Level;

5::second => now;
