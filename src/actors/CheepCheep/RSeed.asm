RSeed:   pla                        ;get value from stack we saved earlier
         clc
         adc $01                    ;add to last two bits of LSFR we saved in other place
         tay                        ;use as pseudorandom offset here
         lda FlyCCXSpeedData,y      ;get horizontal speed using pseudorandom offset
         sta Enemy_X_Speed,x
         lda #$01                   ;set to move towards the right
         sta Enemy_MovingDir,x
         lda Player_X_Speed         ;if player moving left or right, branch ahead of this part
         bne D2XPos1
         ldy $00                    ;get first LSFR or third LSFR lower nybble
         tya                        ;and check for d1 set
         and #%00000010
         beq D2XPos1                ;if d1 not set, branch
         lda Enemy_X_Speed,x
         eor #$ff                   ;if d1 set, change horizontal speed
         clc                        ;into two's compliment, thus moving in the opposite
         adc #$01                   ;direction
         sta Enemy_X_Speed,x
         inc Enemy_MovingDir,x      ;increment to move towards the left