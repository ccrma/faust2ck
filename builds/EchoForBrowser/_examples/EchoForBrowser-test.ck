@import "../EchoForBrowser.chug"

SndBuf buf => EchoForBrowser E => dac;
"special:dope" => buf.read;

// Delay: initial: 0.5, minimum: 0.7, maximum: 0.0
0.5 => E.Delay;

// Warp: initial: 0.0, minimum: 1.0, maximum: -1.0
0.0 => E.Warp;

// DelayT60: initial: 0.5, minimum: 100.0, maximum: 0.0
0.5 => E.DelayT60;

// Feedback: initial: 0.3, minimum: 1.0, maximum: 0.0
0.3 => E.Feedback;

// Amp: initial: 0.5, minimum: 1.0, maximum: 0.0
0.5 => E.Amp;

// FeedbackSm: initial: 0.0, minimum: 1.0, maximum: 0.0
0.0 => E.FeedbackSm;

// EnableEcho: initial: 0.0, minimum: 1.0, maximum: 0.0
0.0 => E.EnableEcho;

5::second => now;
