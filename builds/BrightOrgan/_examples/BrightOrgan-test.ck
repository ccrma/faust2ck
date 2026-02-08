@import "../BrightOrgan.chug"

brightOrgan b => dac;

// freq: initial: 220.0, minimum: 880.0, maximum: 55.0
220.0 => b.freq;

// gate
1.0 => b.gate;

// volume: initial: 0.5, minimum: 1.0, maximum: 0.0
0.5 => b.volume;

// Amount: initial: 0.3, minimum: 1.0, maximum: 0.0
0.3 => b.Amount;

// Damp: initial: 0.5, minimum: 1.0, maximum: 0.0
0.5 => b.Damp;

// Size: initial: 0.6, minimum: 1.0, maximum: 0.0
0.6 => b.Size;

// Fifteenth_2: initial: 0.3, minimum: 1.0, maximum: 0.0
0.3 => b.Fifteenth_2;

// Flute_8: initial: 0.4, minimum: 1.0, maximum: 0.0
0.4 => b.Flute_8;

// Foundation_8: initial: 0.8, minimum: 1.0, maximum: 0.0
0.8 => b.Foundation_8;

// Nasard_2_23: initial: 0.2, minimum: 1.0, maximum: 0.0
0.2 => b.Nasard_2_23;

// Principal_4: initial: 0.5, minimum: 1.0, maximum: 0.0
0.5 => b.Principal_4;

// Tierce_1_35: initial: 0.2, minimum: 1.0, maximum: 0.0
0.2 => b.Tierce_1_35;

5::second => now;
