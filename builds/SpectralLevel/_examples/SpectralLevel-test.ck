@import "../SpectralLevel.chug"

SndBuf buf => spectralLevel s => dac;
"special:dope" => buf.read;

// Level_Averaging_Time: initial: 100.0, minimum: 10000.0, maximum: 1.0
100.0 => s.Level_Averaging_Time;

// Level_dB_Offset: initial: 50.0, minimum: 100.0, maximum: -50.0
50.0 => s.Level_dB_Offset;

// hbargraph0: initial: 1.0, minimum: 10.0, maximum: -50.0
1.0 => s.hbargraph0;

// hbargraph1: initial: 1.0, minimum: 10.0, maximum: -50.0
1.0 => s.hbargraph1;

// hbargraph2: initial: 1.0, minimum: 10.0, maximum: -50.0
1.0 => s.hbargraph2;

// hbargraph3: initial: 1.0, minimum: 10.0, maximum: -50.0
1.0 => s.hbargraph3;

// hbargraph4: initial: 1.0, minimum: 10.0, maximum: -50.0
1.0 => s.hbargraph4;

// hbargraph5: initial: 1.0, minimum: 10.0, maximum: -50.0
1.0 => s.hbargraph5;

// hbargraph6: initial: 1.0, minimum: 10.0, maximum: -50.0
1.0 => s.hbargraph6;

// hbargraph7: initial: 1.0, minimum: 10.0, maximum: -50.0
1.0 => s.hbargraph7;

// hbargraph8: initial: 1.0, minimum: 10.0, maximum: -50.0
1.0 => s.hbargraph8;

// hbargraph9: initial: 1.0, minimum: 10.0, maximum: -50.0
1.0 => s.hbargraph9;

// hbargraph10: initial: 1.0, minimum: 10.0, maximum: -50.0
1.0 => s.hbargraph10;

// hbargraph11: initial: 1.0, minimum: 10.0, maximum: -50.0
1.0 => s.hbargraph11;

// hbargraph12: initial: 1.0, minimum: 10.0, maximum: -50.0
1.0 => s.hbargraph12;

// hbargraph13: initial: 1.0, minimum: 10.0, maximum: -50.0
1.0 => s.hbargraph13;

// hbargraph14: initial: 1.0, minimum: 10.0, maximum: -50.0
1.0 => s.hbargraph14;

5::second => now;
