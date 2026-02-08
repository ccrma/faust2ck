@import "../LowCut.chug"

SndBuf buf => lowcut l => dac;
"special:dope" => buf.read;

// attenuation: initial: 0.0, minimum: 10.0, maximum: -96.0
0.0 => l.attenuation;

// freq: initial: 100.0, minimum: 5000.0, maximum: 20.0
100.0 => l.freq;

5::second => now;
