@import "../AcGuitar.chug"

AcGuitar A => dac;

// kb0bend: initial: 1.0, minimum: 10.0, maximum: 0.0
1.0 => A.kb0bend;

// kb0freq: initial: 164.8, minimum: 10000.0, maximum: 20.0
164.8 => A.kb0freq;

// kb1bend: initial: 1.0, minimum: 10.0, maximum: 0.0
1.0 => A.kb1bend;

// kb1freq: initial: 220.0, minimum: 10000.0, maximum: 20.0
220.0 => A.kb1freq;

// kb2bend: initial: 1.0, minimum: 10.0, maximum: 0.0
1.0 => A.kb2bend;

// kb2freq: initial: 293.7, minimum: 10000.0, maximum: 20.0
293.7 => A.kb2freq;

// kb3bend: initial: 1.0, minimum: 10.0, maximum: 0.0
1.0 => A.kb3bend;

// kb3freq: initial: 392.0, minimum: 10000.0, maximum: 20.0
392.0 => A.kb3freq;

// kb4bend: initial: 1.0, minimum: 10.0, maximum: 0.0
1.0 => A.kb4bend;

// kb4freq: initial: 493.9, minimum: 10000.0, maximum: 20.0
493.9 => A.kb4freq;

// kb5bend: initial: 1.0, minimum: 10.0, maximum: 0.0
1.0 => A.kb5bend;

// kb5freq: initial: 659.2, minimum: 10000.0, maximum: 20.0
659.2 => A.kb5freq;

// kb6k0status: initial: 0.0, minimum: 1.0, maximum: 0.0
0.0 => A.kb6k0status;

// kb6k1status: initial: 0.0, minimum: 1.0, maximum: 0.0
0.0 => A.kb6k1status;

// kb6k2status: initial: 0.0, minimum: 1.0, maximum: 0.0
0.0 => A.kb6k2status;

// kb6k3status: initial: 0.0, minimum: 1.0, maximum: 0.0
0.0 => A.kb6k3status;

// kb6k4status: initial: 0.0, minimum: 1.0, maximum: 0.0
0.0 => A.kb6k4status;

// kb6k5status: initial: 0.0, minimum: 1.0, maximum: 0.0
0.0 => A.kb6k5status;

// pluckPosition: initial: 0.5, minimum: 1.0, maximum: 0.0
0.5 => A.pluckPosition;

5::second => now;
