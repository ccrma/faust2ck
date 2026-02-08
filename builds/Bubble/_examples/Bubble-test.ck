@import "../Bubble.chug"

bubble b => dac;

// Damp: initial: 0.5, minimum: 1.0, maximum: 0.0
0.5 => b.Damp;

// RoomSize: initial: 0.5, minimum: 1.0, maximum: 0.0
0.5 => b.RoomSize;

// Stereo_Spread: initial: 0.5, minimum: 1.0, maximum: 0.0
0.5 => b.Stereo_Spread;

// Wet: initial: 0.3, minimum: 1.0, maximum: 0.0
0.3 => b.Wet;

// freq: initial: 600.0, minimum: 2000.0, maximum: 150.0
600.0 => b.freq;

// drop
1.0 => b.drop;

5::second => now;
