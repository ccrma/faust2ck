@import "../Wind.chug"

Wind W => dac;

// force: initial: 0.7, minimum: 1.0, maximum: 0.0
0.7 => W.force;

5::second => now;
