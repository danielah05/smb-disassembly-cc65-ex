;sound related defines
Squ2_NoteLenBuffer    = $07b3
Squ2_NoteLenCounter   = $07b4
Squ2_EnvelopeDataCtrl = $07b5
Squ1_NoteLenCounter   = $07b6
Squ1_EnvelopeDataCtrl = $07b7
Tri_NoteLenBuffer     = $07b8
Tri_NoteLenCounter    = $07b9
Noise_BeatLenCounter  = $07ba
Squ1_SfxLenCounter    = $07bb
Squ2_SfxLenCounter    = $07bd
Sfx_SecondaryCounter  = $07be
Noise_SfxLenCounter   = $07bf

PauseSoundQueue       = $fa
Square1SoundQueue     = $ff
Square2SoundQueue     = $fe
NoiseSoundQueue       = $fd
AreaMusicQueue        = $fb
EventMusicQueue       = $fc

Square1SoundBuffer    = $f1
Square2SoundBuffer    = $f2
NoiseSoundBuffer      = $f3
AreaMusicBuffer       = $f4
EventMusicBuffer      = $07b1
PauseSoundBuffer      = $07b2

MusicData             = $f5
MusicDataLow          = $f5
MusicDataHigh         = $f6
MusicOffset_Square2   = $f7
MusicOffset_Square1   = $f8
MusicOffset_Triangle  = $f9
MusicOffset_Noise     = $07b0

NoteLenLookupTblOfs   = $f0
DAC_Counter           = $07c0
NoiseDataLoopbackOfs  = $07c1
NoteLengthTblAdder    = $07c4
AreaMusicBuffer_Alt   = $07c5
PauseModeFlag         = $07c6
GroundMusicHeaderOfs  = $07c7
AltRegContentFlag     = $07ca