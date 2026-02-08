@import "../Trill_simple_polyphonic_keyboard.chug"

Trill_simple_polyphonic_keyboard T => dac;

// Q: initial: 0.8, minimum: 10.0, maximum: 0.8
0.8 => T.Q;

// buffering
1.0 => T.buffering;

// cutoff_freq: initial: 350.0, minimum: 2000.0, maximum: 350.0
350.0 => T.cutoff_freq;

// freq: initial: 440.0, minimum: 20000.0, maximum: 20.0
440.0 => T.freq;

// gain: initial: 0.5, minimum: 0.5, maximum: 0.0
0.5 => T.gain;

// gate
1.0 => T.gate;

// touch
1.0 => T.touch;

5::second => now;
