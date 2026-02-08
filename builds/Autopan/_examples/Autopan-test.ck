@import "../Autopan.chug"

SndBuf buf => Autopan A => dac;
"special:dope" => buf.read;

// Amount: initial: 0.0, minimum: 1.0, maximum: 0.0
0.0 => A.Amount;

// Rate: initial: 1.0, minimum: 90.0, maximum: 0.1
1.0 => A.Rate;

// Phase: initial: 180.0, minimum: 360.0, maximum: 0.0
180.0 => A.Phase;

// Shape: initial: 0.0, minimum: 1.0, maximum: 0.0
0.0 => A.Shape;

5::second => now;
