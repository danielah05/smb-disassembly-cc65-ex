FinCCSt: sta Enemy_PageLoc,x        ;save as enemy's page location
         lda #$01
         sta Enemy_Flag,x           ;set enemy's buffer flag
         sta Enemy_Y_HighPos,x      ;set enemy's high vertical byte
         lda #$f8
         sta Enemy_Y_Position,x     ;put enemy below the screen, and we are done
         rts