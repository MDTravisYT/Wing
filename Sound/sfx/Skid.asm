Skid_Header:
	sHeaderInit	
	sHeaderPrio	$60
	sHeaderCh	$01
	sHeaderSFX	$80, $C0, Skid_FM5, $00, $00

Skid_FM5:
	dc.b	$F3,	$E7
	dc.b nRst, $01

Skid_Loop2:
	dc.b nAb3, $01, nRst, $01
	sLoop		$00, $0B, Skid_Loop2
	sStop	
