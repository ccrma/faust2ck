@import "../Karplus32.chug"

karplus32 k => dac;

// excitation_samples: initial: 128.0, minimum: 512.0, maximum: 2.0
128.0 => k.excitation_samples;

// play
1.0 => k.play;

// level: initial: 0.5, minimum: 1.0, maximum: 0.0
0.5 => k.level;

// output_volume: initial: 0.5, minimum: 1.0, maximum: 0.0
0.5 => k.output_volume;

// attenuation: initial: 0.1, minimum: 1.0, maximum: 0.0
0.1 => k.attenuation;

// detune: initial: 32.0, minimum: 512.0, maximum: 0.0
32.0 => k.detune;

// duration_samples: initial: 128.0, minimum: 512.0, maximum: 2.0
128.0 => k.duration_samples;

// polyphony: initial: 1.0, minimum: 32.0, maximum: 0.0
1.0 => k.polyphony;

5::second => now;
