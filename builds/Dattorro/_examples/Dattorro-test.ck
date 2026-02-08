@import "../Dattorro.chug"

SndBuf buf => dattorro d => dac;
"special:dope" => buf.read;

// Prefilter: initial: 0.7, minimum: 1.0, maximum: 0.0
0.7 => d.Prefilter;

// Diffusion_1: initial: 0.6, minimum: 1.0, maximum: 0.0
0.6 => d.Diffusion_1;

// Diffusion_2: initial: 0.6, minimum: 1.0, maximum: 0.0
0.6 => d.Diffusion_2;

// Diffusion_1: initial: 0.6, minimum: 1.0, maximum: 0.0
0.6 => d.Diffusion_1;

// Diffusion_2: initial: 0.6, minimum: 1.0, maximum: 0.0
0.6 => d.Diffusion_2;

// Decay_Rate: initial: 0.7, minimum: 1.0, maximum: 0.0
0.7 => d.Decay_Rate;

// Damping: initial: 0.6, minimum: 1.0, maximum: 0.0
0.6 => d.Damping;

// DryWet_Mix: initial: 0.0, minimum: 1.0, maximum: -1.0
0.0 => d.DryWet_Mix;

// Level: initial: -6.0, minimum: 40.0, maximum: -70.0
-6.0 => d.Level;

5::second => now;
