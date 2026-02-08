@import "../PhaserFlangerLab.chug"

SndBuf buf => phaserFlangerLab p => dac;
"special:dope" => buf.read;

// Amplitude: initial: -20.0, minimum: 10.0, maximum: -120.0
-20.0 => p.Amplitude;

// Frequency: initial: 49.0, minimum: 88.0, maximum: 1.0
49.0 => p.Frequency;

// Detuning_1: initial: -0.1, minimum: 10.0, maximum: -10.0
-0.1 => p.Detuning_1;

// Detuning_2: initial: 0.1, minimum: 10.0, maximum: -10.0
0.1 => p.Detuning_2;

// Portamento: initial: 0.1, minimum: 10.0, maximum: 0.0
0.1 => p.Portamento;

// Saw_Order: initial: 2.0, minimum: 4.0, maximum: 1.0
2.0 => p.Saw_Order;

// Noise_White_or_Pink__uses_only_Amplitude_control_on_________the_left
1.0 => p.Noise_White_or_Pink__uses_only_Amplitude_control_on_________the_left;

// Pink_instead_of_White_Noise_also_called_1f_Noise
1.0 => p.Pink_instead_of_White_Noise_also_called_1f_Noise;

// External_Signal_Input_overrides_SawtoothNoise_________selection_above
1.0 => p.External_Signal_Input_overrides_SawtoothNoise_________selection_above;

// Bypass
1.0 => p.Bypass;

// Invert_Flange_Sum
1.0 => p.Invert_Flange_Sum;

// Speed: initial: 0.5, minimum: 10.0, maximum: 0.0
0.5 => p.Speed;

// Depth: initial: 1.0, minimum: 1.0, maximum: 0.0
1.0 => p.Depth;

// Feedback: initial: 0.0, minimum: 1.0, maximum: -1.0
0.0 => p.Feedback;

// Flange_Delay: initial: 10.0, minimum: 20.0, maximum: 0.0
10.0 => p.Flange_Delay;

// Delay_Offset: initial: 1.0, minimum: 20.0, maximum: 0.0
1.0 => p.Delay_Offset;

// Flanger_Output_Level: initial: 0.0, minimum: 10.0, maximum: -60.0
0.0 => p.Flanger_Output_Level;

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

// Level_Averaging_Time: initial: 100.0, minimum: 10000.0, maximum: 1.0
100.0 => p.Level_Averaging_Time;

// Level_dB_Offset: initial: 50.0, minimum: 100.0, maximum: -50.0
50.0 => p.Level_dB_Offset;

// Flange_LFO: initial: 1.0, minimum: 1.5, maximum: -1.5
1.0 => p.Flange_LFO;

// hbargraph0: initial: 1.0, minimum: 10.0, maximum: -50.0
1.0 => p.hbargraph0;

// hbargraph1: initial: 1.0, minimum: 10.0, maximum: -50.0
1.0 => p.hbargraph1;

// hbargraph2: initial: 1.0, minimum: 10.0, maximum: -50.0
1.0 => p.hbargraph2;

// hbargraph3: initial: 1.0, minimum: 10.0, maximum: -50.0
1.0 => p.hbargraph3;

// hbargraph4: initial: 1.0, minimum: 10.0, maximum: -50.0
1.0 => p.hbargraph4;

// hbargraph5: initial: 1.0, minimum: 10.0, maximum: -50.0
1.0 => p.hbargraph5;

// hbargraph6: initial: 1.0, minimum: 10.0, maximum: -50.0
1.0 => p.hbargraph6;

// hbargraph7: initial: 1.0, minimum: 10.0, maximum: -50.0
1.0 => p.hbargraph7;

// hbargraph8: initial: 1.0, minimum: 10.0, maximum: -50.0
1.0 => p.hbargraph8;

// hbargraph9: initial: 1.0, minimum: 10.0, maximum: -50.0
1.0 => p.hbargraph9;

// hbargraph10: initial: 1.0, minimum: 10.0, maximum: -50.0
1.0 => p.hbargraph10;

// hbargraph11: initial: 1.0, minimum: 10.0, maximum: -50.0
1.0 => p.hbargraph11;

// hbargraph12: initial: 1.0, minimum: 10.0, maximum: -50.0
1.0 => p.hbargraph12;

// hbargraph13: initial: 1.0, minimum: 10.0, maximum: -50.0
1.0 => p.hbargraph13;

// hbargraph14: initial: 1.0, minimum: 10.0, maximum: -50.0
1.0 => p.hbargraph14;

5::second => now;
