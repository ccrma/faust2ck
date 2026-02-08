@import "../Inlooper.chug"

SndBuf buf => inlooper i => dac;
"special:dope" => buf.read;

// Speed: initial: 1.0, minimum: 5.0, maximum: 0.2
1.0 => i.Speed;

// Record
1.0 => i.Record;

// PlayStop
1.0 => i.PlayStop;

// Reverse
1.0 => i.Reverse;

// Loop_start: initial: 0.0, minimum: 1.0, maximum: 0.0
0.0 => i.Loop_start;

// Loop_end: initial: 1.0, minimum: 1.0, maximum: 0.0
1.0 => i.Loop_end;

// Position: initial: 1.0, minimum: 1.0, maximum: 0.0
1.0 => i.Position;

5::second => now;
