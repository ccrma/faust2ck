@import "../DNN.chug"

SndBuf buf => DNN D => dac;
"special:dope" => buf.read;

5::second => now;
