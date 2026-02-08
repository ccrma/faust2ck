@import "../SawtoothLab.chug"

SndBuf buf => sawtoothLab s => dac;
"special:dope" => buf.read;

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

5::second => now;
