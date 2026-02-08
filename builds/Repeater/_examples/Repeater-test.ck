@import "../Repeater.chug"

SndBuf buf => Repeater R => dac;
"special:dope" => buf.read;

// MasterTaille: initial: 500.0, minimum: 2000.0, maximum: 200.0
500.0 => R.MasterTaille;

// nbRepet: initial: 3.0, minimum: 16.0, maximum: 1.0
3.0 => R.nbRepet;

// taille: initial: 50.0, minimum: 200.0, maximum: 2.0
50.0 => R.taille;

5::second => now;
