@import "../FFT.chug"

FFT F => dac;

// Level_Averaging_Time: initial: 100.0, minimum: 10000.0, maximum: 1.0
100.0 => F.Level_Averaging_Time;

// Level_dB_Offset: initial: 50.0, minimum: 100.0, maximum: -50.0
50.0 => F.Level_dB_Offset;

// FFT_Bin_Number: initial: 8.0, minimum: 16.0, maximum: 0.0
8.0 => F.FFT_Bin_Number;

// Amplitude: initial: 0.1, minimum: 1.0, maximum: 0.0
0.1 => F.Amplitude;

// hbargraph0: initial: 1.0, minimum: 10.0, maximum: -50.0
1.0 => F.hbargraph0;

// hbargraph1: initial: 1.0, minimum: 10.0, maximum: -50.0
1.0 => F.hbargraph1;

// hbargraph2: initial: 1.0, minimum: 10.0, maximum: -50.0
1.0 => F.hbargraph2;

// hbargraph3: initial: 1.0, minimum: 10.0, maximum: -50.0
1.0 => F.hbargraph3;

// hbargraph4: initial: 1.0, minimum: 10.0, maximum: -50.0
1.0 => F.hbargraph4;

// hbargraph5: initial: 1.0, minimum: 10.0, maximum: -50.0
1.0 => F.hbargraph5;

// hbargraph6: initial: 1.0, minimum: 10.0, maximum: -50.0
1.0 => F.hbargraph6;

// hbargraph7: initial: 1.0, minimum: 10.0, maximum: -50.0
1.0 => F.hbargraph7;

// hbargraph8: initial: 1.0, minimum: 10.0, maximum: -50.0
1.0 => F.hbargraph8;

// hbargraph9: initial: 1.0, minimum: 10.0, maximum: -50.0
1.0 => F.hbargraph9;

// hbargraph10: initial: 1.0, minimum: 10.0, maximum: -50.0
1.0 => F.hbargraph10;

// hbargraph11: initial: 1.0, minimum: 10.0, maximum: -50.0
1.0 => F.hbargraph11;

// hbargraph12: initial: 1.0, minimum: 10.0, maximum: -50.0
1.0 => F.hbargraph12;

// hbargraph13: initial: 1.0, minimum: 10.0, maximum: -50.0
1.0 => F.hbargraph13;

// hbargraph14: initial: 1.0, minimum: 10.0, maximum: -50.0
1.0 => F.hbargraph14;

// hbargraph15: initial: 1.0, minimum: 10.0, maximum: -50.0
1.0 => F.hbargraph15;

// hbargraph16: initial: 1.0, minimum: 10.0, maximum: -50.0
1.0 => F.hbargraph16;

// Measured_FFT_Bin_Number: initial: 1.0, minimum: 16.0, maximum: 0.0
1.0 => F.Measured_FFT_Bin_Number;

5::second => now;
