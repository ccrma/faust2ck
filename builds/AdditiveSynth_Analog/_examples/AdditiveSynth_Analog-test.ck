@import "../AdditiveSynth_Analog.chug"

AdditiveSynth_Analog A => dac;

// A0: initial: 1.0, minimum: 400.0, maximum: 0.0
1.0 => A.A0;

// A1: initial: 1.0, minimum: 400.0, maximum: 0.0
1.0 => A.A1;

// A2: initial: 1.0, minimum: 400.0, maximum: 0.0
1.0 => A.A2;

// A3: initial: 1.0, minimum: 400.0, maximum: 0.0
1.0 => A.A3;

// A4: initial: 1.0, minimum: 400.0, maximum: 0.0
1.0 => A.A4;

// A5: initial: 1.0, minimum: 400.0, maximum: 0.0
1.0 => A.A5;

// A6: initial: 1.0, minimum: 400.0, maximum: 0.0
1.0 => A.A6;

// A7: initial: 1.0, minimum: 400.0, maximum: 0.0
1.0 => A.A7;

// D0: initial: 1.0, minimum: 400.0, maximum: 0.0
1.0 => A.D0;

// D1: initial: 1.0, minimum: 400.0, maximum: 0.0
1.0 => A.D1;

// D2: initial: 1.0, minimum: 400.0, maximum: 0.0
1.0 => A.D2;

// D3: initial: 1.0, minimum: 400.0, maximum: 0.0
1.0 => A.D3;

// D4: initial: 1.0, minimum: 400.0, maximum: 0.0
1.0 => A.D4;

// D5: initial: 1.0, minimum: 400.0, maximum: 0.0
1.0 => A.D5;

// D6: initial: 1.0, minimum: 400.0, maximum: 0.0
1.0 => A.D6;

// D7: initial: 1.0, minimum: 400.0, maximum: 0.0
1.0 => A.D7;

// R0: initial: 1.0, minimum: 800.0, maximum: 0.0
1.0 => A.R0;

// R1: initial: 1.0, minimum: 800.0, maximum: 0.0
1.0 => A.R1;

// R2: initial: 1.0, minimum: 800.0, maximum: 0.0
1.0 => A.R2;

// R3: initial: 1.0, minimum: 800.0, maximum: 0.0
1.0 => A.R3;

// R4: initial: 1.0, minimum: 800.0, maximum: 0.0
1.0 => A.R4;

// R5: initial: 1.0, minimum: 800.0, maximum: 0.0
1.0 => A.R5;

// R6: initial: 1.0, minimum: 800.0, maximum: 0.0
1.0 => A.R6;

// R7: initial: 1.0, minimum: 800.0, maximum: 0.0
1.0 => A.R7;

// S0: initial: 1.0, minimum: 1.0, maximum: 0.0
1.0 => A.S0;

// S1: initial: 1.0, minimum: 1.0, maximum: 0.0
1.0 => A.S1;

// S2: initial: 1.0, minimum: 1.0, maximum: 0.0
1.0 => A.S2;

// S3: initial: 1.0, minimum: 1.0, maximum: 0.0
1.0 => A.S3;

// S4: initial: 1.0, minimum: 1.0, maximum: 0.0
1.0 => A.S4;

// S5: initial: 1.0, minimum: 1.0, maximum: 0.0
1.0 => A.S5;

// S6: initial: 1.0, minimum: 1.0, maximum: 0.0
1.0 => A.S6;

// S7: initial: 1.0, minimum: 1.0, maximum: 0.0
1.0 => A.S7;

// bend: initial: 0.0, minimum: 2.0, maximum: -2.0
0.0 => A.bend;

// freq: initial: 440.0, minimum: 20000.0, maximum: 20.0
440.0 => A.freq;

// gate
1.0 => A.gate;

// vol0: initial: 1.0, minimum: 1.0, maximum: 0.0
1.0 => A.vol0;

// vol1: initial: 1.0, minimum: 1.0, maximum: 0.0
1.0 => A.vol1;

// vol2: initial: 1.0, minimum: 1.0, maximum: 0.0
1.0 => A.vol2;

// vol3: initial: 1.0, minimum: 1.0, maximum: 0.0
1.0 => A.vol3;

// vol4: initial: 1.0, minimum: 1.0, maximum: 0.0
1.0 => A.vol4;

// vol5: initial: 1.0, minimum: 1.0, maximum: 0.0
1.0 => A.vol5;

// vol6: initial: 1.0, minimum: 1.0, maximum: 0.0
1.0 => A.vol6;

// vol7: initial: 1.0, minimum: 1.0, maximum: 0.0
1.0 => A.vol7;

5::second => now;
