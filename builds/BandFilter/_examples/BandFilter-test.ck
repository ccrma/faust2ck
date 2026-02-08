@import "../BandFilter.chug"

SndBuf buf => bandFilter b => dac;
"special:dope" => buf.read;

// Q_factor: initial: 50.0, minimum: 100.0, maximum: 0.1
50.0 => b.Q_factor;

// freq: initial: 1000.0, minimum: 20000.0, maximum: 20.0
1000.0 => b.freq;

// gain: initial: 0.0, minimum: 50.0, maximum: -50.0
0.0 => b.gain;

5::second => now;
