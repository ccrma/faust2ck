@import "../FourSourcesToOcto.chug"

SndBuf buf => fourSourcesToOcto f => dac;
"special:dope" => buf.read;

// Angle1: initial: 0.0, minimum: 6.3, maximum: -6.3
0.0 => f.Angle1;

// Angle2: initial: 0.0, minimum: 6.3, maximum: -6.3
0.0 => f.Angle2;

// Angle3: initial: 0.0, minimum: 6.3, maximum: -6.3
0.0 => f.Angle3;

// Angle4: initial: 0.0, minimum: 6.3, maximum: -6.3
0.0 => f.Angle4;

// Radius1: initial: 1.0, minimum: 5.0, maximum: 0.0
1.0 => f.Radius1;

// Radius2: initial: 1.0, minimum: 5.0, maximum: 0.0
1.0 => f.Radius2;

// Radius3: initial: 1.0, minimum: 5.0, maximum: 0.0
1.0 => f.Radius3;

// Radius4: initial: 1.0, minimum: 5.0, maximum: 0.0
1.0 => f.Radius4;

5::second => now;
