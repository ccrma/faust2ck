@import "../ZitaRevFDN.chug"

SndBuf buf => zitaRevFDN z => dac;
"special:dope" => buf.read;

// Low_RT60: initial: 3.0, minimum: 8.0, maximum: 1.0
3.0 => z.Low_RT60;

// LF_X: initial: 200.0, minimum: 1000.0, maximum: 50.0
200.0 => z.LF_X;

// Mid_RT60: initial: 2.0, minimum: 8.0, maximum: 1.0
2.0 => z.Mid_RT60;

// HF_Damping: initial: 6000.0, minimum: 23520.0, maximum: 1500.0
6000.0 => z.HF_Damping;

5::second => now;
