@import "../GateCompressor.chug"

SndBuf buf => gateCompressor g => dac;
"special:dope" => buf.read;

// Amplitude: initial: -20.0, minimum: 10.0, maximum: -120.0
-20.0 => g.Amplitude;

// Frequency: initial: 49.0, minimum: 88.0, maximum: 1.0
49.0 => g.Frequency;

// Detuning_1: initial: -0.1, minimum: 10.0, maximum: -10.0
-0.1 => g.Detuning_1;

// Detuning_2: initial: 0.1, minimum: 10.0, maximum: -10.0
0.1 => g.Detuning_2;

// Portamento: initial: 0.1, minimum: 10.0, maximum: 0.0
0.1 => g.Portamento;

// Saw_Order: initial: 2.0, minimum: 4.0, maximum: 1.0
2.0 => g.Saw_Order;

// Noise_White_or_Pink__uses_only_Amplitude_control_on_________the_left
1.0 => g.Noise_White_or_Pink__uses_only_Amplitude_control_on_________the_left;

// Pink_instead_of_White_Noise_also_called_1f_Noise
1.0 => g.Pink_instead_of_White_Noise_also_called_1f_Noise;

// External_Signal_Input_overrides_SawtoothNoise_________selection_above
1.0 => g.External_Signal_Input_overrides_SawtoothNoise_________selection_above;

// Bypass
1.0 => g.Bypass;

// Threshold: initial: -30.0, minimum: 0.0, maximum: -120.0
-30.0 => g.Threshold;

// Attack: initial: 10.0, minimum: 10000.0, maximum: 10.0
10.0 => g.Attack;

// Hold: initial: 200.0, minimum: 1000.0, maximum: 1.0
200.0 => g.Hold;

// Release: initial: 100.0, minimum: 1000.0, maximum: 1.0
100.0 => g.Release;

// Bypass
1.0 => g.Bypass;

// Ratio: initial: 5.0, minimum: 20.0, maximum: 1.0
5.0 => g.Ratio;

// Threshold: initial: -30.0, minimum: 10.0, maximum: -100.0
-30.0 => g.Threshold;

// Attack: initial: 50.0, minimum: 1000.0, maximum: 1.0
50.0 => g.Attack;

// Release: initial: 500.0, minimum: 1000.0, maximum: 1.0
500.0 => g.Release;

// Makeup_Gain: initial: 40.0, minimum: 96.0, maximum: -96.0
40.0 => g.Makeup_Gain;

// Level_Averaging_Time: initial: 100.0, minimum: 10000.0, maximum: 1.0
100.0 => g.Level_Averaging_Time;

// Level_dB_Offset: initial: 50.0, minimum: 100.0, maximum: -50.0
50.0 => g.Level_dB_Offset;

// Gate_Gain: initial: 1.0, minimum: 10.0, maximum: -50.0
1.0 => g.Gate_Gain;

// Compressor_Gain_Before_Makeup: initial: 1.0, minimum: 10.0, maximum: -50.0
1.0 => g.Compressor_Gain_Before_Makeup;

// hbargraph0: initial: 1.0, minimum: 10.0, maximum: -50.0
1.0 => g.hbargraph0;

// hbargraph1: initial: 1.0, minimum: 10.0, maximum: -50.0
1.0 => g.hbargraph1;

// hbargraph2: initial: 1.0, minimum: 10.0, maximum: -50.0
1.0 => g.hbargraph2;

// hbargraph3: initial: 1.0, minimum: 10.0, maximum: -50.0
1.0 => g.hbargraph3;

// hbargraph4: initial: 1.0, minimum: 10.0, maximum: -50.0
1.0 => g.hbargraph4;

// hbargraph5: initial: 1.0, minimum: 10.0, maximum: -50.0
1.0 => g.hbargraph5;

// hbargraph6: initial: 1.0, minimum: 10.0, maximum: -50.0
1.0 => g.hbargraph6;

// hbargraph7: initial: 1.0, minimum: 10.0, maximum: -50.0
1.0 => g.hbargraph7;

// hbargraph8: initial: 1.0, minimum: 10.0, maximum: -50.0
1.0 => g.hbargraph8;

// hbargraph9: initial: 1.0, minimum: 10.0, maximum: -50.0
1.0 => g.hbargraph9;

// hbargraph10: initial: 1.0, minimum: 10.0, maximum: -50.0
1.0 => g.hbargraph10;

// hbargraph11: initial: 1.0, minimum: 10.0, maximum: -50.0
1.0 => g.hbargraph11;

// hbargraph12: initial: 1.0, minimum: 10.0, maximum: -50.0
1.0 => g.hbargraph12;

// hbargraph13: initial: 1.0, minimum: 10.0, maximum: -50.0
1.0 => g.hbargraph13;

// hbargraph14: initial: 1.0, minimum: 10.0, maximum: -50.0
1.0 => g.hbargraph14;

5::second => now;
