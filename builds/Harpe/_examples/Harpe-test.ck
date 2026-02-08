@import "../Harpe.chug"

harpe h => dac;

// attenuation: initial: 0.0, minimum: 0.0, maximum: 0.0
0.0 => h.attenuation;

// hand: initial: 0.0, minimum: 1.0, maximum: 0.0
0.0 => h.hand;

// level: initial: 0.5, minimum: 1.0, maximum: 0.0
0.5 => h.level;

5::second => now;
