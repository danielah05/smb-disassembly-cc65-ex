FSLoop: iny                     ;increment one slot
        lda Enemy_Flag,y        ;check enemy buffer flag for empty slot
        bne FSLoop              ;if set, branch and keep checking
        sty DuplicateObj_Offset ;otherwise set offset here
        txa                     ;transfer original enemy buffer offset
        ora #%10000000          ;store with d7 set as flag in new enemy
        sta Enemy_Flag,y        ;slot as well as enemy offset
        lda Enemy_PageLoc,x
        sta Enemy_PageLoc,y     ;copy page location and horizontal coordinates
        lda Enemy_X_Position,x  ;from original enemy to new enemy
        sta Enemy_X_Position,y
        lda #$01
        sta Enemy_Flag,x        ;set flag as normal for original enemy
        sta Enemy_Y_HighPos,y   ;set high vertical byte for new enemy
        lda Enemy_Y_Position,x
        sta Enemy_Y_Position,y  ;copy vertical coordinate from original to new