CreateSpiny:
          lda Player_Y_Position      ;if player above a certain point, branch to leave
          cmp #$2c
          bcc ExLSHand
          lda Enemy_State,y          ;if lakitu is not in normal state, branch to leave
          bne ExLSHand
          lda Enemy_PageLoc,y        ;store horizontal coordinates (high and low) of lakitu
          sta Enemy_PageLoc,x        ;into the coordinates of the spiny we're going to create
          lda Enemy_X_Position,y
          sta Enemy_X_Position,x
          lda #$01                   ;put spiny within vertical screen unit
          sta Enemy_Y_HighPos,x
          lda Enemy_Y_Position,y     ;put spiny eight pixels above where lakitu is
          sec
          sbc #$08
          sta Enemy_Y_Position,x
          lda PseudoRandomBitReg,x   ;get 2 LSB of LSFR and save to Y
          and #%00000011
          tay
          ldx #$02