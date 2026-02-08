@import "../CrossDelay2.chug"

SndBuf buf => CrossDelay2 C => dac;
"special:dope" => buf.read;

// CrossFeedb: initial: 0.0, minimum: 1.0, maximum: 0.0
0.0 => C.CrossFeedb;

// crossHF: initial: 60.0, minimum: 20000.0, maximum: 20.0
60.0 => C.crossHF;

// crossLF: initial: 12000.0, minimum: 20000.0, maximum: 20.0
12000.0 => C.crossLF;

// delL: initial: 1.0, minimum: 2.0, maximum: 0.0
1.0 => C.delL;

// delR: initial: 1.0, minimum: 2.0, maximum: 0.0
1.0 => C.delR;

// feedbHF: initial: 60.0, minimum: 20000.0, maximum: 20.0
60.0 => C.feedbHF;

// feedbLF: initial: 12000.0, minimum: 20000.0, maximum: 20.0
12000.0 => C.feedbLF;

// feedback: initial: 0.0, minimum: 1.0, maximum: 0.0
0.0 => C.feedback;

// preDelL: initial: 1.0, minimum: 2.0, maximum: 0.0
1.0 => C.preDelL;

// preDelR: initial: 1.0, minimum: 2.0, maximum: 0.0
1.0 => C.preDelR;

// shiftL: initial: 0.0, minimum: 12.0, maximum: -12.0
0.0 => C.shiftL;

// shiftR: initial: 0.0, minimum: 12.0, maximum: -12.0
0.0 => C.shiftR;

5::second => now;
