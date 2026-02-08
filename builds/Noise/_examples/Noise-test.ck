@import "../Noise.chug"

Noise N => dac;

// Volume: initial: 0.5, minimum: 1.0, maximum: 0.0
0.5 => N.Volume;

5::second => now;
