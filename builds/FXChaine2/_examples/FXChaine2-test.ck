@import "../FXChaine2.chug"

SndBuf buf => FXChaine2 F => dac;
"special:dope" => buf.read;

// Damp: initial: 0.5, minimum: 1.0, maximum: 0.0
0.5 => F.Damp;

// Delay: initial: 0.5, minimum: 1.0, maximum: 0.0
0.5 => F.Delay;

// Depth: initial: 0.5, minimum: 1.0, maximum: 0.0
0.5 => F.Depth;

// Deviation: initial: 0.5, minimum: 1.0, maximum: 0.0
0.5 => F.Deviation;

// Feedback: initial: 0.7, minimum: 1.0, maximum: -1.0
0.7 => F.Feedback;

// InvertSum
1.0 => F.InvertSum;

// MaxNotch1: initial: 800.0, minimum: 10000.0, maximum: 20.0
800.0 => F.MaxNotch1;

// MinNotch1: initial: 100.0, minimum: 5000.0, maximum: 20.0
100.0 => F.MinNotch1;

// NotchDepth: initial: 1.0, minimum: 1.0, maximum: 0.0
1.0 => F.NotchDepth;

// NotchFreqRatio: initial: 1.5, minimum: 4.0, maximum: 1.1
1.5 => F.NotchFreqRatio;

// NotchWidth: initial: 1000.0, minimum: 5000.0, maximum: 10.0
1000.0 => F.NotchWidth;

// Rate: initial: 0.5, minimum: 7.0, maximum: 0.0
0.5 => F.Rate;

// RoomSize: initial: 0.5, minimum: 1.0, maximum: 0.0
0.5 => F.RoomSize;

// Speed: initial: 0.5, minimum: 10.0, maximum: 0.0
0.5 => F.Speed;

// Stereo: initial: 0.5, minimum: 1.0, maximum: 0.0
0.5 => F.Stereo;

// VibratoMode
1.0 => F.VibratoMode;

// delay: initial: 1.0, minimum: 2.0, maximum: 0.0
1.0 => F.delay;

// dryWetDelay: initial: 0.5, minimum: 1.0, maximum: 0.0
0.5 => F.dryWetDelay;

// dryWetPhaser: initial: 0.5, minimum: 1.0, maximum: 0.0
0.5 => F.dryWetPhaser;

// dryWetReverb: initial: 0.2, minimum: 1.0, maximum: 0.0
0.2 => F.dryWetReverb;

5::second => now;
