@import "../Trill_simple_monophonic_keyboard.chug"

Trill_simple_monophonic_keyboard T => dac;

// Q: initial: 0.8, minimum: 10.0, maximum: 0.8
0.8 => T.Q;

// buffering
1.0 => T.buffering;

// cutoff_freq: initial: 350.0, minimum: 2000.0, maximum: 350.0
350.0 => T.cutoff_freq;

// note: initial: -1.0, minimum: 11.0, maximum: -1.0
-1.0 => T.note;

// touch
1.0 => T.touch;

5::second => now;
