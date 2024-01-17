; ---------------------------------------------------------------------------
; Animation script - Sonic
; ---------------------------------------------------------------------------
SonicAniData:
		dc.w SonicAni_Blank-SonicAniData
		dc.w SonicANi_Blank-SonicAniData
		dc.w SonicANi_Flap-SonicAniData
		dc.w SonicANi_Flap-SonicAniData
		dc.w SonicANi_Blank-SonicAniData
		dc.w SonicANi_Blank-SonicAniData
		dc.w SonicANi_Blank-SonicAniData
		dc.w SonicANi_Blank-SonicAniData
		dc.w SonicANi_Blank-SonicAniData
		dc.w SonicANi_Blank-SonicAniData
		dc.w SonicANi_Blank-SonicAniData
		dc.w SonicANi_Blank-SonicAniData
		dc.w SonicANi_Blank-SonicAniData
		dc.w SonicANi_Blank-SonicAniData
		dc.w SonicANi_Blank-SonicAniData
		dc.w SonicANi_Blank-SonicAniData
		dc.w SonicANi_Blank-SonicAniData
		dc.w SonicANi_Blank-SonicAniData
		dc.w SonicANi_Blank-SonicAniData
		dc.w SonicANi_Blank-SonicAniData
		dc.w SonicANi_Blank-SonicAniData
		dc.w SonicANi_Blank-SonicAniData
		dc.w SonicANi_Blank-SonicAniData
		dc.w SonicANi_Blank-SonicAniData
		dc.w SonicANi_Blank-SonicAniData
		dc.w SonicANi_Blank-SonicAniData
		dc.w SonicANi_Blank-SonicAniData
		dc.w SonicANi_Blank-SonicAniData
		dc.w SonicANi_Blank-SonicAniData
		dc.w SonicANi_Blank-SonicAniData
		dc.w SonicANi_FlapB-SonicAniData
SonicAni_Blank:		dc.b 1, 1, $FD, 0
		even
SonicANi_Flap:		dc.b	3,	$FD,	$1E
SonicANi_FlapB:		dc.b	3,	1,	2,	3,	2,	1, $FD,	0
sonicani_sprint:
sonicani_run:
sonicani_walk:
sonicani_roll2:
sonicani_roll:
sonicani_push: