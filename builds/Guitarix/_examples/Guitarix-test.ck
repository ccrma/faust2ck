@import "../Guitarix.chug"

SndBuf buf => guitarix g => dac;
"special:dope" => buf.read;

// drive: initial: 0.5, minimum: 1.0, maximum: 0.0
0.5 => g.drive;

// level: initial: -16.0, minimum: 4.0, maximum: -20.0
-16.0 => g.level;

// tone: initial: 400.0, minimum: 1000.0, maximum: 100.0
400.0 => g.tone;

// Pregain: initial: -6.0, minimum: 20.0, maximum: -20.0
-6.0 => g.Pregain;

// Gain: initial: -6.0, minimum: 20.0, maximum: -20.0
-6.0 => g.Gain;

// Treble: initial: 0.5, minimum: 1.0, maximum: 0.0
0.5 => g.Treble;

// Middle: initial: 0.5, minimum: 1.0, maximum: 0.0
0.5 => g.Middle;

// Bass: initial: 0.5, minimum: 1.0, maximum: 0.0
0.5 => g.Bass;

// amount: initial: 100.0, minimum: 100.0, maximum: 0.0
100.0 => g.amount;

5::second => now;
