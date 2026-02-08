@import "../PitchShifter.chug"

SndBuf buf => pitchShifter p => dac;
"special:dope" => buf.read;

// shift_semitones: initial: 0.0, minimum: 12.0, maximum: -12.0
0.0 => p.shift_semitones;

// window_samples: initial: 1000.0, minimum: 10000.0, maximum: 50.0
1000.0 => p.window_samples;

// xfade_samples: initial: 10.0, minimum: 10000.0, maximum: 1.0
10.0 => p.xfade_samples;

5::second => now;
