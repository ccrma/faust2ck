@import "../VirtualAnalogLab.chug"

SndBuf buf => virtualAnalogLab v => dac;
"special:dope" => buf.read;

// Sawtooth: initial: 1.0, minimum: 1.0, maximum: 0.0
1.0 => v.Sawtooth;

// Order_3
1.0 => v.Order_3;

// x00: initial: 0.0, minimum: 1.0, maximum: 0.0
0.0 => v.x00;

// Duty_Cycle: initial: 0.5, minimum: 1.0, maximum: 0.0
0.5 => v.Duty_Cycle;

// Square: initial: 0.0, minimum: 1.0, maximum: 0.0
0.0 => v.Square;

// Triangle: initial: 0.0, minimum: 1.0, maximum: 0.0
0.0 => v.Triangle;

// Pink_Noise: initial: 0.0, minimum: 1.0, maximum: 0.0
0.0 => v.Pink_Noise;

// Ext_Input: initial: 0.0, minimum: 1.0, maximum: 0.0
0.0 => v.Ext_Input;

// Mix_Amplitude: initial: -20.0, minimum: 10.0, maximum: -120.0
-20.0 => v.Mix_Amplitude;

// Frequency: initial: 49.0, minimum: 88.0, maximum: 1.0
49.0 => v.Frequency;

// Detuning_1: initial: -0.1, minimum: 10.0, maximum: -10.0
-0.1 => v.Detuning_1;

// Detuning_2: initial: 0.1, minimum: 10.0, maximum: -10.0
0.1 => v.Detuning_2;

// Portamento: initial: 0.1, minimum: 10.0, maximum: 0.0
0.1 => v.Portamento;

// Saw_Order: initial: 2.0, minimum: 4.0, maximum: 1.0
2.0 => v.Saw_Order;

// Bypass
1.0 => v.Bypass;

// Use_Biquads
1.0 => v.Use_Biquads;

// Normalized_Ladders
1.0 => v.Normalized_Ladders;

// Corner_Frequency: initial: 25.0, minimum: 88.0, maximum: 1.0
25.0 => v.Corner_Frequency;

// Corner_Resonance: initial: 0.9, minimum: 1.0, maximum: 0.0
0.9 => v.Corner_Resonance;

// VCF_Output_Level: initial: 5.0, minimum: 20.0, maximum: -60.0
5.0 => v.VCF_Output_Level;

// Level_Averaging_Time: initial: 100.0, minimum: 10000.0, maximum: 1.0
100.0 => v.Level_Averaging_Time;

// Level_dB_Offset: initial: 50.0, minimum: 100.0, maximum: -50.0
50.0 => v.Level_dB_Offset;

// hbargraph0: initial: 1.0, minimum: 10.0, maximum: -50.0
1.0 => v.hbargraph0;

// hbargraph1: initial: 1.0, minimum: 10.0, maximum: -50.0
1.0 => v.hbargraph1;

// hbargraph2: initial: 1.0, minimum: 10.0, maximum: -50.0
1.0 => v.hbargraph2;

// hbargraph3: initial: 1.0, minimum: 10.0, maximum: -50.0
1.0 => v.hbargraph3;

// hbargraph4: initial: 1.0, minimum: 10.0, maximum: -50.0
1.0 => v.hbargraph4;

// hbargraph5: initial: 1.0, minimum: 10.0, maximum: -50.0
1.0 => v.hbargraph5;

// hbargraph6: initial: 1.0, minimum: 10.0, maximum: -50.0
1.0 => v.hbargraph6;

// hbargraph7: initial: 1.0, minimum: 10.0, maximum: -50.0
1.0 => v.hbargraph7;

// hbargraph8: initial: 1.0, minimum: 10.0, maximum: -50.0
1.0 => v.hbargraph8;

// hbargraph9: initial: 1.0, minimum: 10.0, maximum: -50.0
1.0 => v.hbargraph9;

// hbargraph10: initial: 1.0, minimum: 10.0, maximum: -50.0
1.0 => v.hbargraph10;

// hbargraph11: initial: 1.0, minimum: 10.0, maximum: -50.0
1.0 => v.hbargraph11;

// hbargraph12: initial: 1.0, minimum: 10.0, maximum: -50.0
1.0 => v.hbargraph12;

// hbargraph13: initial: 1.0, minimum: 10.0, maximum: -50.0
1.0 => v.hbargraph13;

// hbargraph14: initial: 1.0, minimum: 10.0, maximum: -50.0
1.0 => v.hbargraph14;

5::second => now;
