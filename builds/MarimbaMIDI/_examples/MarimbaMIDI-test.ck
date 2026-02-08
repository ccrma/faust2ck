@import "../MarimbaMIDI.chug"

MarimbaMIDI M => dac;

// freq: initial: 440.0, minimum: 1000.0, maximum: 50.0
440.0 => M.freq;

// gain: initial: 1.0, minimum: 1.0, maximum: 0.0
1.0 => M.gain;

// strikePosition: initial: 0.0, minimum: 4.0, maximum: 0.0
0.0 => M.strikePosition;

// strikeCutOff: initial: 6500.0, minimum: 20000.0, maximum: 20.0
6500.0 => M.strikeCutOff;

// outGain: initial: 0.8, minimum: 1.0, maximum: 0.0
0.8 => M.outGain;

// strikeSharpness: initial: 0.5, minimum: 5.0, maximum: 0.0
0.5 => M.strikeSharpness;

// gate
1.0 => M.gate;

5::second => now;
