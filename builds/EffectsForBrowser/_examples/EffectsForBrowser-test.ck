@import "../EffectsForBrowser.chug"

SndBuf buf => freeverb f => dac;
"special:dope" => buf.read;

// Delay: initial: 0.5, minimum: 0.7, maximum: 0.0
0.5 => f.Delay;

// Warp: initial: 0.0, minimum: 1.0, maximum: -1.0
0.0 => f.Warp;

// DelayT60: initial: 0.5, minimum: 100.0, maximum: 0.0
0.5 => f.DelayT60;

// Feedback: initial: 0.3, minimum: 1.0, maximum: 0.0
0.3 => f.Feedback;

// Amp: initial: 0.5, minimum: 1.0, maximum: 0.0
0.5 => f.Amp;

// FeedbackSm: initial: 0.0, minimum: 1.0, maximum: 0.0
0.0 => f.FeedbackSm;

// EnableEcho: initial: 0.0, minimum: 1.0, maximum: 0.0
0.0 => f.EnableEcho;

// Delay: initial: 0.2, minimum: 1.0, maximum: 0.0
0.2 => f.Delay;

// Rate: initial: 0.5, minimum: 10.0, maximum: 0.0
0.5 => f.Rate;

// Depth: initial: 0.8, minimum: 1.0, maximum: 0.0
0.8 => f.Depth;

// Feedback: initial: 0.0, minimum: 1.0, maximum: -1.0
0.0 => f.Feedback;

// Waveshape: initial: 0.0, minimum: 1.0, maximum: 0.0
0.0 => f.Waveshape;

// Enable: initial: 0.0, minimum: 1.0, maximum: 0.0
0.0 => f.Enable;

// Invert: initial: 0.0, minimum: 1.0, maximum: 0.0
0.0 => f.Invert;

// Delay: initial: 0.5, minimum: 1.0, maximum: 0.0
0.5 => f.Delay;

// Rate: initial: 0.5, minimum: 7.0, maximum: 0.0
0.5 => f.Rate;

// Depth: initial: 0.5, minimum: 1.0, maximum: 0.0
0.5 => f.Depth;

// Deviation: initial: 0.5, minimum: 1.0, maximum: 0.0
0.5 => f.Deviation;

// Enable: initial: 0.0, minimum: 1.0, maximum: 0.0
0.0 => f.Enable;

// Damp: initial: 0.5, minimum: 1.0, maximum: 0.0
0.5 => f.Damp;

// RoomSize: initial: 0.5, minimum: 1.0, maximum: 0.0
0.5 => f.RoomSize;

// Wet: initial: 0.3, minimum: 1.0, maximum: 0.0
0.3 => f.Wet;

// Enable: initial: 0.0, minimum: 1.0, maximum: 0.0
0.0 => f.Enable;

5::second => now;
