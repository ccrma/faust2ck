@import "../FilterBank.chug"

SndBuf buf => filterBank f => dac;
"special:dope" => buf.read;

// Bypass
1.0 => f.Bypass;

// Band_1: initial: -10.0, minimum: 10.0, maximum: -70.0
-10.0 => f.Band_1;

// Band_2: initial: -10.0, minimum: 10.0, maximum: -70.0
-10.0 => f.Band_2;

// Band_3: initial: -10.0, minimum: 10.0, maximum: -70.0
-10.0 => f.Band_3;

// Band_4: initial: -10.0, minimum: 10.0, maximum: -70.0
-10.0 => f.Band_4;

// Band_5: initial: -10.0, minimum: 10.0, maximum: -70.0
-10.0 => f.Band_5;

// Band_6: initial: -10.0, minimum: 10.0, maximum: -70.0
-10.0 => f.Band_6;

// Band_7: initial: -10.0, minimum: 10.0, maximum: -70.0
-10.0 => f.Band_7;

// Band_8: initial: -10.0, minimum: 10.0, maximum: -70.0
-10.0 => f.Band_8;

// Band_9: initial: -10.0, minimum: 10.0, maximum: -70.0
-10.0 => f.Band_9;

// Band10: initial: -10.0, minimum: 10.0, maximum: -70.0
-10.0 => f.Band10;

5::second => now;
