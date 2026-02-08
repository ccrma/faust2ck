@import "../Switcher.chug"

SndBuf buf => switcher s => dac;
"special:dope" => buf.read;

// source_0_ltgt_source_1: initial: 0.0, minimum: 1.0, maximum: 0.0
0.0 => s.source_0_ltgt_source_1;

5::second => now;
