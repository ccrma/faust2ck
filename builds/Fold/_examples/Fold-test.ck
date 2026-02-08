@import "../Fold.chug"

SndBuf buf => Fold F => dac;
"special:dope" => buf.read;

5::second => now;
