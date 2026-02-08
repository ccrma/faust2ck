@import "../Sum.chug"

Sum S => dac;

// vol: initial: 0.3, minimum: 1.0, maximum: 0.0
0.3 => S.vol;

5::second => now;
