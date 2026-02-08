@import "../Noop.chug"

SndBuf buf => Noop N => dac;
"special:dope" => buf.read;

5::second => now;
