@import "../FastOsc.chug"

fosc f => dac;

// freq: initial: 1000.0, minimum: 24000.0, maximum: 0.0
1000.0 => f.freq;

// volume_db: initial: 0.0, minimum: 0.0, maximum: -96.0
0.0 => f.volume_db;

5::second => now;
