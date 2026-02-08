@import "../GrainGenerator.chug"

SndBuf buf => GrainGenerator G => dac;
"special:dope" => buf.read;

// decal: initial: 0.0, minimum: 1.0, maximum: 0.0
0.0 => G.decal;

// feedback: initial: 0.0, minimum: 2.0, maximum: 0.0
0.0 => G.feedback;

// population: initial: 1.0, minimum: 1.0, maximum: 0.0
1.0 => G.population;

// speed: initial: 1.0, minimum: 4.0, maximum: 0.1
1.0 => G.speed;

// taille: initial: 100.0, minimum: 200.0, maximum: 4.0
100.0 => G.taille;

5::second => now;
