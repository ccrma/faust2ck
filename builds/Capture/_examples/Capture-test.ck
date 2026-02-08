@import "../Capture.chug"

SndBuf buf => capture c => dac;
"special:dope" => buf.read;

// Capture
1.0 => c.Capture;

// level_db: initial: 0.0, minimum: 4.0, maximum: -96.0
0.0 => c.level_db;

5::second => now;
