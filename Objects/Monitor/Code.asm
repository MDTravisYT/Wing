; =========================================================================================================================================================
; Monitor object
; =========================================================================================================================================================
		rsset	_objLvlSSTs
_objMonFall	rs.b	1				; Fall flag
; ---------------------------------------------------------------------------------------------------------------------------------------------------------
ObjEnemy:
        moveq   #0, d0
        move.b  _objRoutine(a0),d0
        move.w  .Index(pc,d0.w),d0
        jmp     .Index(pc,d0.w)

.Index:
        dc.w    ObjEnemy_Init-.Index
        dc.w    ObjEnemy_Down-.Index
        dc.w    ObjEnemy_Up-.Index

ObjEnemy_Init:
        addq.b  #2, _objRoutine(a0)
        move.l  #Map_ObjMonitor,_objMapping(a0)
        move.w	#$588,_objVRAM(a0)
		move.b	#4,_objRender(a0)
        displaySprite	3,a0,a1,0			; Priority

ObjEnemy_Down:
        cmpi.w  #200,   _objYPos(a0)
        blo.s   .cont
        addq.b  #2, _ObjRoutine(a0)
    .cont:
        add.w   #1, _objYPos(a0)
        nextObject

ObjEnemy_Up:
        cmpi.w  #24,   _objYPos(a0)
        bhi.s   .cont
        subq.b  #2, _ObjRoutine(a0)
    .cont:
        sub.w   #1, _objYPos(a0)
        nextObject

; ---------------------------------------------------------------------------------------------------------------------------------------------------------
; Data
; ---------------------------------------------------------------------------------------------------------------------------------------------------------
Map_ObjMonitor:
		include	"Objects/Monitor/Mappings.asm"
Ani_ObjMonitor:
		include	"Objects/Monitor/Animations.asm"
; =========================================================================================================================================================
