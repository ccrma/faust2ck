@import "../ReverbDesigner.chug"

SndBuf buf => reverbDesigner r => dac;
"special:dope" => buf.read;

// Band_0_upper_edge_in_Hz: initial: 500.0, minimum: 10000.0, maximum: 100.0
500.0 => r.Band_0_upper_edge_in_Hz;

// Band_1_upper_edge_in_Hz: initial: 1000.0, minimum: 10000.0, maximum: 100.0
1000.0 => r.Band_1_upper_edge_in_Hz;

// Band_2_upper_edge_in_Hz: initial: 2000.0, minimum: 10000.0, maximum: 100.0
2000.0 => r.Band_2_upper_edge_in_Hz;

// Band_3_upper_edge_in_Hz: initial: 4000.0, minimum: 10000.0, maximum: 100.0
4000.0 => r.Band_3_upper_edge_in_Hz;

// : initial: 8.4, minimum: 100.0, maximum: 0.1
8.4 => r.;

// : initial: 6.5, minimum: 100.0, maximum: 0.1
6.5 => r.;

// : initial: 5.0, minimum: 100.0, maximum: 0.1
5.0 => r.;

// : initial: 3.8, minimum: 100.0, maximum: 0.1
3.8 => r.;

// : initial: 2.7, minimum: 100.0, maximum: 0.1
2.7 => r.;

// min_acoustic_ray_length: initial: 46.0, minimum: 63.0, maximum: 0.1
46.0 => r.min_acoustic_ray_length;

// max_acoustic_ray_length: initial: 63.0, minimum: 63.0, maximum: 0.1
63.0 => r.max_acoustic_ray_length;

// Quench
1.0 => r.Quench;

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

// Output_Level_dB: initial: -40.0, minimum: 20.0, maximum: -70.0
-40.0 => r.Output_Level_dB;

5::second => now;
