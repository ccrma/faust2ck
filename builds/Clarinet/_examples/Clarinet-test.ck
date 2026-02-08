@import "../Clarinet.chug"

SndBuf buf => Clarinet C => dac;
"special:dope" => buf.read;

// kb0k0status: initial: 0.0, minimum: 1.0, maximum: 0.0
0.0 => C.kb0k0status;

// kb0k1status: initial: 0.0, minimum: 1.0, maximum: 0.0
0.0 => C.kb0k1status;

// kb0k2status: initial: 0.0, minimum: 1.0, maximum: 0.0
0.0 => C.kb0k2status;

// kb0k3status: initial: 0.0, minimum: 1.0, maximum: 0.0
0.0 => C.kb0k3status;

// kb1k0status: initial: 0.0, minimum: 1.0, maximum: 0.0
0.0 => C.kb1k0status;

// kb1k1status: initial: 0.0, minimum: 1.0, maximum: 0.0
0.0 => C.kb1k1status;

// kb1k2status: initial: 0.0, minimum: 1.0, maximum: 0.0
0.0 => C.kb1k2status;

// kb1k3status: initial: 0.0, minimum: 1.0, maximum: 0.0
0.0 => C.kb1k3status;

// kb1k4status: initial: 0.0, minimum: 1.0, maximum: 0.0
0.0 => C.kb1k4status;

// reedStiffness: initial: 0.0, minimum: 1.0, maximum: 0.0
0.0 => C.reedStiffness;

5::second => now;
