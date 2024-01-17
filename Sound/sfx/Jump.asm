SndJump_Header:
	sHeaderInit	
	sHeaderPrio	$60
	sHeaderCh	$01
	sHeaderSFX	$80, $C0, SndJump_FM5, -1, $00

SndJump_FM5:
	dc.b	$F3,	$E7
	ssMod68k	$00, $01, -5, $10
	dc.b nC3, $10
	sModOff
	
Jumploop:
	dc.b	$E7,	$02
	saVol	$01
	sLoop		$00, $0B, Jumploop
	
	sStop	
