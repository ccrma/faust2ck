@import "../Rain.chug"

Rain R => dac;

// density: initial: 300.0, minimum: 1000.0, maximum: 0.0
300.0 => R.density;

// volume: initial: 0.5, minimum: 1.0, maximum: 0.0
0.5 => R.volume;

5::second => now;
