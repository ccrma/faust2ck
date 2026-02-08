@import "../VirtualAnalog.chug"

SndBuf buf => VirtualAnalog V => dac;
"special:dope" => buf.read;

// Sawtooth: initial: 1.0, minimum: 1.0, maximum: 0.0
1.0 => V.Sawtooth;

// Order_3
1.0 => V.Order_3;

// x00: initial: 0.0, minimum: 1.0, maximum: 0.0
0.0 => V.x00;

// Duty_Cycle: initial: 0.5, minimum: 1.0, maximum: 0.0
0.5 => V.Duty_Cycle;

// Square: initial: 0.0, minimum: 1.0, maximum: 0.0
0.0 => V.Square;

// Triangle: initial: 0.0, minimum: 1.0, maximum: 0.0
0.0 => V.Triangle;

// Pink_Noise: initial: 0.0, minimum: 1.0, maximum: 0.0
0.0 => V.Pink_Noise;

// Ext_Input: initial: 0.0, minimum: 1.0, maximum: 0.0
0.0 => V.Ext_Input;

// Mix_Amplitude: initial: -20.0, minimum: 10.0, maximum: -120.0
-20.0 => V.Mix_Amplitude;

// Frequency: initial: 49.0, minimum: 88.0, maximum: 1.0
49.0 => V.Frequency;

// Detuning_1: initial: -0.1, minimum: 10.0, maximum: -10.0
-0.1 => V.Detuning_1;

// Detuning_2: initial: 0.1, minimum: 10.0, maximum: -10.0
0.1 => V.Detuning_2;

// Portamento: initial: 0.1, minimum: 10.0, maximum: 0.0
0.1 => V.Portamento;

// Saw_Order: initial: 2.0, minimum: 4.0, maximum: 1.0
2.0 => V.Saw_Order;

5::second => now;
