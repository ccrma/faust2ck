@import "../Granulator.chug"

SndBuf buf => Granulator G => dac;
"special:dope" => buf.read;

// GrainSize: initial: 200.0, minimum: 2205.0, maximum: 5.0
200.0 => G.GrainSize;

// Speed: initial: 10.0, minimum: 20.0, maximum: 1.0
10.0 => G.Speed;

// Probability: initial: 70.0, minimum: 100.0, maximum: 50.0
70.0 => G.Probability;

5::second => now;
