@import "../ReverbTester.chug"

SndBuf buf => reverbTester r => dac;
"special:dope" => buf.read;

// Mute_Ext_Inputs
1.0 => r.Mute_Ext_Inputs;

// Pink_Noise
1.0 => r.Pink_Noise;

// Left
1.0 => r.Left;

// Center
1.0 => r.Center;

// Right
1.0 => r.Right;

5::second => now;
