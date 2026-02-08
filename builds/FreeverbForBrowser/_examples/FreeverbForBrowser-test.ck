@import "../FreeverbForBrowser.chug"

SndBuf buf => freeverb f => dac;
"special:dope" => buf.read;

// Damp: initial: 0.5, minimum: 1.0, maximum: 0.0
0.5 => f.Damp;

// RoomSize: initial: 0.5, minimum: 1.0, maximum: 0.0
0.5 => f.RoomSize;

// Wet: initial: 0.3, minimum: 1.0, maximum: 0.0
0.3 => f.Wet;

// Enable: initial: 0.0, minimum: 1.0, maximum: 0.0
0.0 => f.Enable;

5::second => now;
