InitRedPTroopa:
          ldy #$30                    ;load central position adder for 48 pixels down
          lda Enemy_Y_Position,x      ;set vertical coordinate into location to
          sta RedPTroopaOrigXPos,x    ;be used as original vertical coordinate
          bpl GetCent                 ;if vertical coordinate < $80
          ldy #$e0                    ;if => $80, load position adder for 32 pixels up