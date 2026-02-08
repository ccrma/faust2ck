@import "../SpectralTilt.chug"

SndBuf buf => spectralTilt s => dac;
"special:dope" => buf.read;

// Slope_of_Spectral_Tilt_across_Band: initial: -0.5, minimum: 1.0, maximum: -1.0
-0.5 => s.Slope_of_Spectral_Tilt_across_Band;

// Band_Start_Frequency: initial: 100.0, minimum: 10000.0, maximum: 20.0
100.0 => s.Band_Start_Frequency;

// Band_Width: initial: 5000.0, minimum: 10000.0, maximum: 100.0
5000.0 => s.Band_Width;

5::second => now;
