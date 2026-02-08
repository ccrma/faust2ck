@import "../ChurchOrgan.chug"

churchOrgan c => dac;

// WetDry_Mix: initial: 0.0, minimum: 1.0, maximum: -1.0
0.0 => c.WetDry_Mix;

// Level: initial: -6.0, minimum: 40.0, maximum: -70.0
-6.0 => c.Level;

// freq: initial: 440.0, minimum: 1000.0, maximum: 50.0
440.0 => c.freq;

// gain: initial: 1.0, minimum: 1.0, maximum: 0.0
1.0 => c.gain;

// gain_fundamental: initial: 1.0, minimum: 1.0, maximum: 0.0
1.0 => c.gain_fundamental;

// gain_8ve_partial: initial: 1.0, minimum: 1.0, maximum: 0.0
1.0 => c.gain_8ve_partial;

// gain_5th_partial: initial: 1.0, minimum: 1.0, maximum: 0.0
1.0 => c.gain_5th_partial;

// gain_3d_partial: initial: 1.0, minimum: 1.0, maximum: 0.0
1.0 => c.gain_3d_partial;

// gain_other_partials: initial: 0.1, minimum: 1.0, maximum: 0.0
0.1 => c.gain_other_partials;

// gain_lower_octave: initial: 1.0, minimum: 1.0, maximum: 0.0
1.0 => c.gain_lower_octave;

// noise_gain: initial: 0.0, minimum: 1.0, maximum: 0.0
0.0 => c.noise_gain;

// gate
1.0 => c.gate;

5::second => now;
