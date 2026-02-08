@import "../ChorusForBrowser.chug"

SndBuf buf => ChorusForBrowser C => dac;
"special:dope" => buf.read;

// Delay: initial: 0.5, minimum: 1.0, maximum: 0.0
0.5 => C.Delay;

// Rate: initial: 0.5, minimum: 7.0, maximum: 0.0
0.5 => C.Rate;

// Depth: initial: 0.5, minimum: 1.0, maximum: 0.0
0.5 => C.Depth;

// Deviation: initial: 0.5, minimum: 1.0, maximum: 0.0
0.5 => C.Deviation;

// Enable: initial: 0.0, minimum: 1.0, maximum: 0.0
0.0 => C.Enable;

5::second => now;
