@import "../ChurchBell.chug"

ChurchBell C => dac;

// strikePosition: initial: 0.0, minimum: 4.0, maximum: 0.0
0.0 => C.strikePosition;

// strikeCutOff: initial: 6500.0, minimum: 20000.0, maximum: 20.0
6500.0 => C.strikeCutOff;

// strikeSharpness: initial: 0.5, minimum: 5.0, maximum: 0.0
0.5 => C.strikeSharpness;

// gain: initial: 1.0, minimum: 1.0, maximum: 0.0
1.0 => C.gain;

// gate
1.0 => C.gate;

5::second => now;
