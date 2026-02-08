@import "../Karplus.chug"

karplus k => dac;

// excitation: initial: 128.0, minimum: 512.0, maximum: 2.0
128.0 => k.excitation;

// play
1.0 => k.play;

// level: initial: 0.5, minimum: 1.0, maximum: 0.0
0.5 => k.level;

// attenuation: initial: 0.1, minimum: 1.0, maximum: 0.0
0.1 => k.attenuation;

// duration: initial: 128.0, minimum: 512.0, maximum: 2.0
128.0 => k.duration;

5::second => now;
