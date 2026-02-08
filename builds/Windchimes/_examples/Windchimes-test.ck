@import "../Windchimes.chug"

Windchimes W => dac;

// wind: initial: 0.0, minimum: 2.0, maximum: 0.0
0.0 => W.wind;

// energy: initial: 1.0, minimum: 1.5, maximum: 0.0
1.0 => W.energy;

// hit_probability: initial: 1.0, minimum: 1.0, maximum: 0.0
1.0 => W.hit_probability;

5::second => now;
