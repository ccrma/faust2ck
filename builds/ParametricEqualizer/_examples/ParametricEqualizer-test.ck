@import "../ParametricEqualizer.chug"

SndBuf buf => parametricEqualizer p => dac;
"special:dope" => buf.read;

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

5::second => now;
