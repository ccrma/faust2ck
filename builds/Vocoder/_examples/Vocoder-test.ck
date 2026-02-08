@import "../Vocoder.chug"

SndBuf buf => Vocoder V => dac;
"special:dope" => buf.read;

// Freq: initial: 330.0, minimum: 2000.0, maximum: 50.0
330.0 => V.Freq;

// Gain: initial: 0.5, minimum: 1.0, maximum: 0.0
0.5 => V.Gain;

// Attack: initial: 5.0, minimum: 100.0, maximum: 0.1
5.0 => V.Attack;

// Release: initial: 5.0, minimum: 100.0, maximum: 0.1
5.0 => V.Release;

// BW: initial: 0.5, minimum: 2.0, maximum: 0.1
0.5 => V.BW;

5::second => now;
