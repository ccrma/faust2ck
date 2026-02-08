@import "../Tester.chug"

tester t => dac;

// freq: initial: 1000.0, minimum: 20000.0, maximum: 10.0
1000.0 => t.freq;

// volume: initial: -96.0, minimum: 0.0, maximum: -96.0
-96.0 => t.volume;

// destination: initial: 0.0, minimum: 8.0, maximum: 0.0
0.0 => t.destination;

// pink_noise
1.0 => t.pink_noise;

// sine_wave
1.0 => t.sine_wave;

// white_noise
1.0 => t.white_noise;

5::second => now;
