@import "../NoiseMetadata.chug"

noiseMetadata n => dac;

// Volume: initial: 0.0, minimum: 1.0, maximum: 0.0
0.0 => n.Volume;

5::second => now;
