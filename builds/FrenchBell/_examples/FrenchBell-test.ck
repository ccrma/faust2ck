@import "../FrenchBell.chug"

FrenchChurchBell F => dac;

// strikePosition: initial: 0.0, minimum: 6.0, maximum: 0.0
0.0 => F.strikePosition;

// strikeCutOff: initial: 6500.0, minimum: 20000.0, maximum: 20.0
6500.0 => F.strikeCutOff;

// strikeSharpness: initial: 0.5, minimum: 5.0, maximum: 0.0
0.5 => F.strikeSharpness;

// gain: initial: 1.0, minimum: 1.0, maximum: 0.0
1.0 => F.gain;

// gate
1.0 => F.gate;

5::second => now;
