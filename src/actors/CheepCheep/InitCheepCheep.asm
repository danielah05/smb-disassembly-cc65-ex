InitCheepCheep:
      jsr SmallBBox              ;set vertical bounding box, speed, init others
      lda PseudoRandomBitReg,x   ;check one portion of LSFR
      and #%00010000             ;get d4 from it
      sta CheepCheepMoveMFlag,x  ;save as movement flag of some sort
      lda Enemy_Y_Position,x
      sta CheepCheepOrigYPos,x   ;save original vertical coordinate here
      rts