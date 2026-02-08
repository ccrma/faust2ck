@import "../Compressor.chug"

SndBuf buf => compressor c => dac;
"special:dope" => buf.read;

// Bypass
1.0 => c.Bypass;

// Ratio: initial: 5.0, minimum: 20.0, maximum: 1.0
5.0 => c.Ratio;

// Threshold: initial: -30.0, minimum: 10.0, maximum: -100.0
-30.0 => c.Threshold;

// Attack: initial: 50.0, minimum: 1000.0, maximum: 1.0
50.0 => c.Attack;

// Release: initial: 500.0, minimum: 1000.0, maximum: 1.0
500.0 => c.Release;

// Makeup_Gain: initial: 40.0, minimum: 96.0, maximum: -96.0
40.0 => c.Makeup_Gain;

// Compressor_Gain_Before_Makeup: initial: 1.0, minimum: 10.0, maximum: -50.0
1.0 => c.Compressor_Gain_Before_Makeup;

5::second => now;
