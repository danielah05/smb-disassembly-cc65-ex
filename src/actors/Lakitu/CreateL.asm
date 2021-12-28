CreateL:  lda #$00                ;initialize enemy state
          sta Enemy_State,x
          lda #Lakitu             ;create lakitu enemy object
          sta Enemy_ID,x
          jsr SetupLakitu         ;do a sub to set up lakitu
          lda #$20
          jsr PutAtRightExtent    ;finish setting up lakitu