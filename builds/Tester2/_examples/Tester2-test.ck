@import "../Tester2.chug"

tester2 t => dac;

// freq: initial: 440.0, minimum: 20000.0, maximum: 40.0
440.0 => t.freq;

// volume: initial: -96.0, minimum: 0.0, maximum: -96.0
-96.0 => t.volume;

// signal: initial: 0.0, minimum: 2.0, maximum: 0.0
0.0 => t.signal;

// channel: initial: 0.0, minimum: 3.0, maximum: 0.0
0.0 => t.channel;

5::second => now;
