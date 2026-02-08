@import "../FlangerForBrowser.chug"

SndBuf buf => FlangerForBrowser F => dac;
"special:dope" => buf.read;

// Delay: initial: 0.2, minimum: 1.0, maximum: 0.0
0.2 => F.Delay;

// Rate: initial: 0.5, minimum: 10.0, maximum: 0.0
0.5 => F.Rate;

// Depth: initial: 0.8, minimum: 1.0, maximum: 0.0
0.8 => F.Depth;

// Feedback: initial: 0.0, minimum: 1.0, maximum: -1.0
0.0 => F.Feedback;

// Waveshape: initial: 0.0, minimum: 1.0, maximum: 0.0
0.0 => F.Waveshape;

// Enable: initial: 0.0, minimum: 1.0, maximum: 0.0
0.0 => F.Enable;

// Invert: initial: 0.0, minimum: 1.0, maximum: 0.0
0.0 => F.Invert;

5::second => now;
