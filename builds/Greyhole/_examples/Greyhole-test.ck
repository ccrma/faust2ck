@import "../Greyhole.chug"

SndBuf buf => greyhole g => dac;
"special:dope" => buf.read;

// delayTime: initial: 0.2, minimum: 1.5, maximum: 0.0
0.2 => g.delayTime;

// damping: initial: 0.0, minimum: 1.0, maximum: 0.0
0.0 => g.damping;

// size: initial: 1.0, minimum: 3.0, maximum: 0.5
1.0 => g.size;

// diffusion: initial: 0.5, minimum: 1.0, maximum: 0.0
0.5 => g.diffusion;

// feedback: initial: 0.9, minimum: 1.0, maximum: 0.0
0.9 => g.feedback;

// modDepth: initial: 0.1, minimum: 1.0, maximum: 0.0
0.1 => g.modDepth;

// modFreq: initial: 2.0, minimum: 10.0, maximum: 0.0
2.0 => g.modFreq;

5::second => now;
