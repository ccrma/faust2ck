@import "../Serial.chug"

SndBuf buf => Serial S => dac;
"special:dope" => buf.read;

5::second => now;
