@import "../SpectralTiltLab.chug"

SndBuf buf => spectralTiltLab s => dac;
"special:dope" => buf.read;

// Slope_of_Spectral_Tilt_across_Band: initial: -0.5, minimum: 1.0, maximum: -1.0
-0.5 => s.Slope_of_Spectral_Tilt_across_Band;

// Bypass_Spectral_Tilt
1.0 => s.Bypass_Spectral_Tilt;

// Band_Start_Frequency: initial: 100.0, minimum: 10000.0, maximum: 20.0
100.0 => s.Band_Start_Frequency;

// Band_Width: initial: 5000.0, minimum: 10000.0, maximum: 100.0
5000.0 => s.Band_Width;

// Amplitude: initial: -20.0, minimum: 10.0, maximum: -120.0
-20.0 => s.Amplitude;

// Frequency: initial: 49.0, minimum: 88.0, maximum: 1.0
49.0 => s.Frequency;

// Detuning_1: initial: -0.1, minimum: 10.0, maximum: -10.0
-0.1 => s.Detuning_1;

// Detuning_2: initial: 0.1, minimum: 10.0, maximum: -10.0
0.1 => s.Detuning_2;

// Portamento: initial: 0.1, minimum: 10.0, maximum: 0.0
0.1 => s.Portamento;

// Saw_Order: initial: 2.0, minimum: 4.0, maximum: 1.0
2.0 => s.Saw_Order;

// Noise_White_or_Pink__uses_only_Amplitude_control_on_________the_left
1.0 => s.Noise_White_or_Pink__uses_only_Amplitude_control_on_________the_left;

// Pink_instead_of_White_Noise_also_called_1f_Noise
1.0 => s.Pink_instead_of_White_Noise_also_called_1f_Noise;

// External_Signal_Input_overrides_SawtoothNoise_________selection_above
1.0 => s.External_Signal_Input_overrides_SawtoothNoise_________selection_above;

// Level_Averaging_Time: initial: 100.0, minimum: 10000.0, maximum: 1.0
100.0 => s.Level_Averaging_Time;

// Level_dB_Offset: initial: 50.0, minimum: 100.0, maximum: -50.0
50.0 => s.Level_dB_Offset;

// hbargraph0: initial: 1.0, minimum: 10.0, maximum: -50.0
1.0 => s.hbargraph0;

// hbargraph1: initial: 1.0, minimum: 10.0, maximum: -50.0
1.0 => s.hbargraph1;

// hbargraph2: initial: 1.0, minimum: 10.0, maximum: -50.0
1.0 => s.hbargraph2;

// hbargraph3: initial: 1.0, minimum: 10.0, maximum: -50.0
1.0 => s.hbargraph3;

// hbargraph4: initial: 1.0, minimum: 10.0, maximum: -50.0
1.0 => s.hbargraph4;

// hbargraph5: initial: 1.0, minimum: 10.0, maximum: -50.0
1.0 => s.hbargraph5;

// hbargraph6: initial: 1.0, minimum: 10.0, maximum: -50.0
1.0 => s.hbargraph6;

// hbargraph7: initial: 1.0, minimum: 10.0, maximum: -50.0
1.0 => s.hbargraph7;

// hbargraph8: initial: 1.0, minimum: 10.0, maximum: -50.0
1.0 => s.hbargraph8;

// hbargraph9: initial: 1.0, minimum: 10.0, maximum: -50.0
1.0 => s.hbargraph9;

// hbargraph10: initial: 1.0, minimum: 10.0, maximum: -50.0
1.0 => s.hbargraph10;

// hbargraph11: initial: 1.0, minimum: 10.0, maximum: -50.0
1.0 => s.hbargraph11;

// hbargraph12: initial: 1.0, minimum: 10.0, maximum: -50.0
1.0 => s.hbargraph12;

// hbargraph13: initial: 1.0, minimum: 10.0, maximum: -50.0
1.0 => s.hbargraph13;

// hbargraph14: initial: 1.0, minimum: 10.0, maximum: -50.0
1.0 => s.hbargraph14;

5::second => now;
