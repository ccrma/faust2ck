Impulse i => freeverb reverb => dac;

0.9 => reverb.Damp;
1 => reverb.RoomSize;
0.9 => reverb.Wet;

while(true)
{
    10 => i.next;
    1::second => now;
}