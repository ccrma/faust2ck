### faust2ck - A FAUST wrapper-generator for ChucK Ugens.
========

FAUST is a functional language for defining DSP structures that can be
used for real-time audio computing.  It can generate block diagrams
and also C++ code which will execute the given routine.

This is an ideal way to create unit generators (UGens) for ChucK.  The
ChucK data structures can be a bit weird and the learning curve for
hacking on ChucK can be a little steep.  Using FAUST, you can
concentrate on the DSP algorithm, and allow faust2ck to take care of
creating ChucK-compatible C++ code so that you can instantiate your
new DSP object in a ChucK program.

Please see the FAUST websites for more details, online tutorials, and
even an online compiler that you can try:

http://faust.grame.fr/
https://fausteditor.grame.fr/
https://faustide.grame.fr/

This document describes how to use faust2ck.

This code is directly based off of Scott Sinclair's original faust2ck and
a more mature version thanks to Spencer Salazar.
without which this latest iteration would not exist. 


## Build/Install
=============

To build faust2ck, first download the source:

$ git clone https://github.com/ccrma/faust2ck

Then compile:

$ cd faust2ck
$ make

## Usage
=====

Running faust2ck with no parameters will give you a usage string:

$ faust2ck 
Usage: faust2ck <filename.dsp>

You can see that it requires a single input, the name of a FAUST .dsp file.
How you come up with this .dsp file is beyond the scope of this document, 
but check out here: http://faust.grame.fr/examples.html for some 
cool examples.

When you execute faust2ck with a suitable .dsp file:

$ faust2ck filename.dsp

it will generate a ChuGin called "filename.chug". You can load this into ChucK
with the -g option:

$ chuck -gfilename

but chuck will exit immediately because you haven't provided it with a script
to run. If you want to load your new ChuGin without the annoying -g option, 
simply copy it to your ChuGin directory (typically /usr/local/lib/chuck). 


## Included Examples
-- Still to be tested, please report any issues --

- 1dDampedWaveEquation -
- 2massChain -
- AcGuitar -
- AdditiveSynth_Analog -
- AdditiveSynth -
- APF -
- AudioParamOsc -
- Autopan -
- BandFilter -
- Bells -
- BlowBottle -
- BouncingOsc -
- Bowed -
- BowedOsc -
- BowedString -
- BPF -
- Brass -
- BrassMIDI -
- BrightOrgan -
- Bubble -
- Capture -
- ChorusForBrowser -
- ChurchBell -
- ChurchOrgan -
- Clarinet -
- ClarinetMIDI -
- Complex_rain -
- Compressor -
- Construction -
- ControllableNonPhysicalString -
- CrazyGuiro -
- CrossDelay2 -
- CryBaby -
- Dattorro -
- DiodeLadder -
- Distortion -
- DjembeMIDI -
- DNN -
- Door -
- Drumkit -
- Drums -
- DubDub -
- Dx7 -
- DX7 -
- Echo -
- EchoForBrowser -
- EffectsForBrowser -
- ElecGuitar -
- ElecGuitarEffect -
- ElecGuitarMIDI -
- EnglishBell -
- Fact -
- FastOsc -
- FdnRev -
- FFT -
- FilterBank -
- FilterOsc -
- Fire -
- Flanger -
- FlangerForBrowser -
- Flute -
- FluteMIDI -
- FluteStk -
- Fm -
- FMSynth2_Analog -
- FMSynth2 -
- FMSynth2_FX_Analog -
- FMSynth2_FX -
- Fold -
- FourSourcesToOcto -
- Freeverb -
- FreeverbForBrowser -
- FrenchBell -
- Frog -
- FXChaine2 -
- GateCompressor -
- GermanBell -
- GlassHarmonica -
- GrainGenerator -
- Granulator -
- GraphicEqLab -
- Greyhole -
- Guitarix -
- GuitarMIDI -
- HammeredString -
- HammerOsc -
- HarmonicExciter -
- HarmonicOscillator2 -
- HarmonicOscillator3 -
- HarmonicOscillator -
- Harp -
- Harpe -
- HighShelf -
- HPF -
- Inlooper -
- Insects -
- Jprev -
- Karplus32 -
- Karplus -
- Kb_rom_rev1 -
- Korg35HPF -
- Korg35LPF -
- LfBoost -
- LowBoost -
- LowCut -
- LowShelf -
- LPF -
- MarimbaMIDI -
- Matrix -
- Mesh -
- ModularInterpInstrMIDI -
- MoogHalfLadder -
- MoogLadder -
- MoogVCF -
- MultiSynth -
- MyEffect -
- NLFeks -
- NLFfm -
- NlOsc -
- Noise -
- NoiseGate -
- NoiseMetadata -
- Noop -
- Notch -
- NylonGuitarMIDI -
- OberheimBPF -
- OberheimBSF -
- Oberheim -
- OberheimHPF -
- OberheimLPF -
- OneSourceToStereo -
- Osc -
- Osci -
- Panner -
- Panpot -
- Paradigma -
- ParametricEqLab -
- ParametricEqualizer -
- ParamOsc -
- PeakingEQ -
- PeakNotch -
- Phaser -
- PhaserFlangerLab -
- PhysicalLFO -
- PianoHammeredString -
- PitchShifter -
- PluckedOsc -
- PluckedString -
- PolyTriangle -
- QuadEcho -
- QuantizedChords -
- Rain -
- Ramp -
- Repeater -
- ReverbDesigner -
- Reverb -
- ReverbTank -
- ReverbTester -
- RussianBell -
- SallenKey2ndOrderBPF -
- SallenKey2ndOrder -
- SallenKey2ndOrderHPF -
- SallenKey2ndOrderLPF -
- SallenKeyOnePole -
- SallenKeyOnePoleHPF -
- SallenKeyOnePoleLPF -
- SawtoothLab -
- Sawtooth_synth -
- Saxophony -
- Serial -
- SimpleFX_Analog -
- SimpleFX -
- SimpleSynth_Analog -
- SimpleSynth -
- SimpleSynth_FX_Analog -
- SimpleSynth_FX -
- Sine_synth -
- Sitar -
- SmoothDelay -
- Spat -
- SpectralLevel -
- SpectralTilt -
- SpectralTiltLab -
- StandardBell -
- Statespace -
- StereoEcho -
- StiffString -
- Sum -
- Switcher -
- Tapiir -
- Target -
- Tester2 -
- Tester -
- Thunder -
- TibetanBowl -
- TinyString -
- Toy -
- TriangleMesh -
- Trill_simple_monophonic_keyboard -
- Trill_simple_polyphonic_keyboard -
- Trumpet -
- TunedBar -
- Turenas -
- UniBar -
- VcfWahLab -
- Violin2 -
- Violin -
- ViolinMIDI -
- VirtualAnalog -
- VirtualAnalogForBrowser -
- VirtualAnalogLab -
- VirtualAnalogWithEffectsForBrowser -
- Vital_rev -
- VocalBP -
- VocalBPMIDI -
- Vocal -
- VocalFOF -
- VocalFOFMIDI -
- Vocoder -
- Wah -
- WahPedal -
- WaveSynth_Analog -
- WaveSynth -
- WaveSynth_FX_Analog -
- WaveSynth_FX -
- Wfs -
- Windchimes -
- Wind -
- ZitaRev -
- ZitaRevFDN -
