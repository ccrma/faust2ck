@import "../Mesh.chug"

SndBuf buf => Mesh M => dac;
"special:dope" => buf.read;

5::second => now;
