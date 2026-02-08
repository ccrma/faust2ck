@import "../HarmonicExciter.chug"

SndBuf buf => HarmonicExciter H => dac;
"special:dope" => buf.read;

// Bypass
1.0 => H.Bypass;

// Ratio: initial: 5.0, minimum: 20.0, maximum: 1.0
5.0 => H.Ratio;

// Threshold: initial: -30.0, minimum: 10.0, maximum: -100.0
-30.0 => H.Threshold;

// Attack: initial: 50.0, minimum: 500.0, maximum: 0.0
50.0 => H.Attack;

// Release: initial: 500.0, minimum: 1000.0, maximum: 0.0
500.0 => H.Release;

// Cutoff_Frequency: initial: 5000.0, minimum: 10000.0, maximum: 1000.0
5000.0 => H.Cutoff_Frequency;

// Harmonics: initial: 20.0, minimum: 200.0, maximum: 0.0
20.0 => H.Harmonics;

// Mix: initial: 0.5, minimum: 1.0, maximum: 0.0
0.5 => H.Mix;

// Compressor_Gain: initial: 1.0, minimum: 10.0, maximum: -50.0
1.0 => H.Compressor_Gain;

5::second => now;
