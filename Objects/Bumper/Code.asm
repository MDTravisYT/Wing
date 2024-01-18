; =========================================================================================================================================================
; Water surface object
; =========================================================================================================================================================
		rsset	_objLvlSSTs

; ---------------------------------------------------------------------------------------------------------------------------------------------------------
ObjAttack:
		move.l	#ObjBumperMain,_objAddress(a0)	; Next routine
		move.l	#Map_ObjBumper,_objMapping(a0)		; Mappings
		move.w	#$35B,_objVRAM(a0)			; Tile properties
		move.b	#4,_objRender(a0)			; Render flags
	displaySprite	1,a0,a1,0			; Priority
		moveq	#$10,d1
		move.b	d1,_objDrawW(a0)
		move.b	d1,_objColW(a0)
		move.b	d1,_objDrawH(a0)
		move.b	d1,_objColH(a0)
		

; ---------------------------------------------------------------------------------------------------------------------------------------------------------
ObjBumperMain:
	add.w	#10,_objXPos(a0)

		move.w	maxCamXPos.w,d0		; Get max camera Y position
		addi.w	#320,d0				; Get bottom boundary position
		cmp.w	_objXPos(a0),d0			; Have we touched the bottom boundary?
		blt.s	ObjAttack_Delete		; If so, branch
	nextObject

ObjAttack_Delete:
		playSnd	#sCheckpoint, 2			; Play checkpoint sound
		jsr	DeleteObject.w
	nextObject

; ---------------------------------------------------------------------------------------------------------------------------------------------------------
; Data
; ---------------------------------------------------------------------------------------------------------------------------------------------------------
Map_ObjBumper:
		include	"Objects/Bumper/Mappings.asm"
		even
; ---------------------------------------------------------------------------------------------------------------------------------------------------------
Ani_ObjBumper:
		dc.w	.Ani0-Ani_ObjBumper
		dc.w	.Ani1-Ani_ObjBumper
.Ani0:		dc.b	5, 0, $FF, 0
.Ani1:		dc.b	5, 1, 2, 1, 2, $FD, 0
		even
; =========================================================================================================================================================