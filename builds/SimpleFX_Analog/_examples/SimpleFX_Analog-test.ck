@import "../SimpleFX_Analog.chug"

SndBuf buf => SimpleFX_Analog S => dac;
"special:dope" => buf.read;

// Damp: initial: 0.5, minimum: 1.0, maximum: 0.0
0.5 => S.Damp;

// RoomSize: initial: 0.7, minimum: 1.0, maximum: 0.0
0.7 => S.RoomSize;

// Stereo: initial: 0.6, minimum: 1.0, maximum: 0.0
0.6 => S.Stereo;

// drive: initial: 0.3, minimum: 1.0, maximum: 0.0
0.3 => S.drive;

// dryWetFlang: initial: 0.5, minimum: 1.0, maximum: 0.0
0.5 => S.dryWetFlang;

// dryWetReverb: initial: 0.4, minimum: 1.0, maximum: 0.0
0.4 => S.dryWetReverb;

// flangDel: initial: 4.0, minimum: 10.0, maximum: 0.0
4.0 => S.flangDel;

// flangFeedback: initial: 0.7, minimum: 1.0, maximum: 0.0
0.7 => S.flangFeedback;

// pan: initial: 0.5, minimum: 1.0, maximum: 0.0
0.5 => S.pan;

// volume: initial: 1.0, minimum: 1.0, maximum: 0.0
1.0 => S.volume;

5::second => now;
