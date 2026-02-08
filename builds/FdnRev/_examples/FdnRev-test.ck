@import "../FdnRev.chug"

SndBuf buf => fdnRev f => dac;
"special:dope" => buf.read;

// Band_0_upper_edge_in_Hz: initial: 500.0, minimum: 10000.0, maximum: 100.0
500.0 => f.Band_0_upper_edge_in_Hz;

// Band_1_upper_edge_in_Hz: initial: 1000.0, minimum: 10000.0, maximum: 100.0
1000.0 => f.Band_1_upper_edge_in_Hz;

// Band_2_upper_edge_in_Hz: initial: 2000.0, minimum: 10000.0, maximum: 100.0
2000.0 => f.Band_2_upper_edge_in_Hz;

// Band_3_upper_edge_in_Hz: initial: 4000.0, minimum: 10000.0, maximum: 100.0
4000.0 => f.Band_3_upper_edge_in_Hz;

// : initial: 8.4, minimum: 100.0, maximum: 0.1
8.4 => f.;

// : initial: 6.5, minimum: 100.0, maximum: 0.1
6.5 => f.;

// : initial: 5.0, minimum: 100.0, maximum: 0.1
5.0 => f.;

// : initial: 3.8, minimum: 100.0, maximum: 0.1
3.8 => f.;

// : initial: 2.7, minimum: 100.0, maximum: 0.1
2.7 => f.;

// min_acoustic_ray_length: initial: 46.0, minimum: 63.0, maximum: 0.1
46.0 => f.min_acoustic_ray_length;

// max_acoustic_ray_length: initial: 63.0, minimum: 63.0, maximum: 0.1
63.0 => f.max_acoustic_ray_length;

// Quench
1.0 => f.Quench;

// Mute_Ext_Inputs
1.0 => f.Mute_Ext_Inputs;

// Pink_Noise
1.0 => f.Pink_Noise;

// Left
1.0 => f.Left;

// Center
1.0 => f.Center;

// Right
1.0 => f.Right;

// Output_Level_dB: initial: -40.0, minimum: 20.0, maximum: -70.0
-40.0 => f.Output_Level_dB;

5::second => now;
