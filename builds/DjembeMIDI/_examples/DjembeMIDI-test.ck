@import "../DjembeMIDI.chug"

DjembeMIDI D => dac;

// freq: initial: 60.0, minimum: 100.0, maximum: 50.0
60.0 => D.freq;

// gain: initial: 1.0, minimum: 1.0, maximum: 0.0
1.0 => D.gain;

// strikePosition: initial: 0.5, minimum: 1.0, maximum: 0.0
0.5 => D.strikePosition;

// strikeSharpness: initial: 0.5, minimum: 5.0, maximum: 0.0
0.5 => D.strikeSharpness;

// outGain: initial: 1.0, minimum: 1.0, maximum: 0.0
1.0 => D.outGain;

// gate
1.0 => D.gate;

5::second => now;
