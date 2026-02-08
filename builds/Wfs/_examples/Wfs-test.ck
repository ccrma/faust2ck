@import "../Wfs.chug"

SndBuf buf => wfs w => dac;
"special:dope" => buf.read;

// inGain: initial: 1.0, minimum: 10.0, maximum: 0.0
1.0 => w.inGain;

// xs: initial: 0.0, minimum: 10.0, maximum: -10.0
0.0 => w.xs;

// ys: initial: 1.5, minimum: 10.0, maximum: 1.0
1.5 => w.ys;

// zs: initial: 0.0, minimum: 10.0, maximum: -10.0
0.0 => w.zs;

// inGain: initial: 1.0, minimum: 10.0, maximum: 0.0
1.0 => w.inGain;

// xs: initial: 0.0, minimum: 10.0, maximum: -10.0
0.0 => w.xs;

// ys: initial: 1.5, minimum: 10.0, maximum: 1.0
1.5 => w.ys;

// zs: initial: 0.0, minimum: 10.0, maximum: -10.0
0.0 => w.zs;

5::second => now;
