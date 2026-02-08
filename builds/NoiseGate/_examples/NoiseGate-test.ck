@import "../NoiseGate.chug"

SndBuf buf => noiseGate n => dac;
"special:dope" => buf.read;

// Bypass
1.0 => n.Bypass;

// Threshold: initial: -30.0, minimum: 0.0, maximum: -120.0
-30.0 => n.Threshold;

// Attack: initial: 10.0, minimum: 10000.0, maximum: 10.0
10.0 => n.Attack;

// Hold: initial: 200.0, minimum: 1000.0, maximum: 1.0
200.0 => n.Hold;

// Release: initial: 100.0, minimum: 1000.0, maximum: 1.0
100.0 => n.Release;

// Gate_Gain: initial: 1.0, minimum: 10.0, maximum: -50.0
1.0 => n.Gate_Gain;

5::second => now;
