@import "../ParametricEqLab.chug"

SndBuf buf => parametricEqLab p => dac;
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

// Low_BoostCut: initial: 0.0, minimum: 40.0, maximum: -40.0
0.0 => p.Low_BoostCut;

// Transition_Frequency: initial: 200.0, minimum: 5000.0, maximum: 1.0
200.0 => p.Transition_Frequency;

// Peak_BoostCut: initial: 0.0, minimum: 40.0, maximum: -40.0
0.0 => p.Peak_BoostCut;

// Peak_Frequency: initial: 49.0, minimum: 100.0, maximum: 1.0
49.0 => p.Peak_Frequency;

// Peak_Q: initial: 40.0, minimum: 1000.0, maximum: 1.0
40.0 => p.Peak_Q;

// High_BoostCut: initial: 0.0, minimum: 40.0, maximum: -40.0
0.0 => p.High_BoostCut;

// Transition_Frequency: initial: 8000.0, minimum: 10000.0, maximum: 20.0
8000.0 => p.Transition_Frequency;

// Level_Averaging_Time: initial: 100.0, minimum: 10000.0, maximum: 1.0
100.0 => p.Level_Averaging_Time;

// Level_dB_Offset: initial: 50.0, minimum: 100.0, maximum: -50.0
50.0 => p.Level_dB_Offset;

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

// hbargraph15: initial: 1.0, minimum: 10.0, maximum: -50.0
1.0 => p.hbargraph15;

// hbargraph16: initial: 1.0, minimum: 10.0, maximum: -50.0
1.0 => p.hbargraph16;

// hbargraph17: initial: 1.0, minimum: 10.0, maximum: -50.0
1.0 => p.hbargraph17;

// hbargraph18: initial: 1.0, minimum: 10.0, maximum: -50.0
1.0 => p.hbargraph18;

// hbargraph19: initial: 1.0, minimum: 10.0, maximum: -50.0
1.0 => p.hbargraph19;

5::second => now;
