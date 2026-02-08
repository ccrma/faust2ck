@import "../EnglishBell.chug"

EnglishChurchBell E => dac;

// strikePosition: initial: 0.0, minimum: 6.0, maximum: 0.0
0.0 => E.strikePosition;

// strikeCutOff: initial: 6500.0, minimum: 20000.0, maximum: 20.0
6500.0 => E.strikeCutOff;

// strikeSharpness: initial: 0.5, minimum: 5.0, maximum: 0.0
0.5 => E.strikeSharpness;

// gain: initial: 1.0, minimum: 1.0, maximum: 0.0
1.0 => E.gain;

// gate
1.0 => E.gate;

5::second => now;
