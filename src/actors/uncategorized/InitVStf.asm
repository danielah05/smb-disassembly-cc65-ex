InitVStf: lda #$00                    ;initialize vertical speed
          sta Enemy_Y_Speed,x         ;and movement force
          sta Enemy_Y_MoveForce,x
          rts