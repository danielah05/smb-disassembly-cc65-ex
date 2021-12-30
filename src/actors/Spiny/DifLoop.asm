DifLoop:  lda PRDiffAdjustData,y     ;get three values and save them
          sta $01,x                  ;to $01-$03
          iny
          iny                        ;increment Y four bytes for each value
          iny
          iny
          dex                        ;decrement X for each one
          bpl DifLoop                ;loop until all three are written
          ldx ObjectOffset           ;get enemy object buffer offset
          jsr PlayerLakituDiff       ;move enemy, change direction, get value - difference
          ldy Player_X_Speed         ;check player's horizontal speed
          cpy #$08
          bcs SetSpSpd               ;if moving faster than a certain amount, branch elsewhere
          tay                        ;otherwise save value in A to Y for now
          lda PseudoRandomBitReg+1,x
          and #%00000011             ;get one of the LSFR parts and save the 2 LSB
          beq UsePosv                ;branch if neither bits are set
          tya
          eor #%11111111             ;otherwise get two's compliment of Y
          tay
          iny