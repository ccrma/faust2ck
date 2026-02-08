@import "../DubDub.chug"

dubDub d => dac;

// gain: initial: 0.5, minimum: 1.0, maximum: 0.0
0.5 => d.gain;

// gate
1.0 => d.gate;

// modFeq: initial: 9.0, minimum: 18.0, maximum: 0.5
9.0 => d.modFeq;

// x: initial: 0.0, minimum: 1.0, maximum: 0.0
0.0 => d.x;

// y: initial: 0.0, minimum: 1.0, maximum: 0.0
0.0 => d.y;

5::second => now;
