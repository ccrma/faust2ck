@import "../Osc.chug"

osc o => dac;

// freq: initial: 1000.0, minimum: 24000.0, maximum: 20.0
1000.0 => o.freq;

// volume: initial: 0.0, minimum: 0.0, maximum: -96.0
0.0 => o.volume;

5::second => now;
