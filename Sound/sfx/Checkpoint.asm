Attack_Header:
	sHeaderInit	
	sHeaderPrio	$60
	sHeaderCh	$02
	sHeaderSFX	$80, $80, Attack_FM5, $00, $00
	sHeaderSFX	$80, $A0, Attack_FM5B, $00, $04

Attack_FM5B:
	dc.b	nRst,	$02

Attack_FM5:

Attack_Loop1:
	dc.b nC4, $03, nRst, $01
	sLoop		$00, $03, Attack_Loop1

Attack_Loop2:
	dc.b nC4, $03, nRst, $01
	saVol	$01
	sLoop		$00, $09, Attack_Loop2
	sStop	
