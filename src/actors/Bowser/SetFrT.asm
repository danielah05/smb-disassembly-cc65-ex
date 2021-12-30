SetFrT: sta FrenzyEnemyTimer        ;set timer accordingly
        lda PseudoRandomBitReg,x
        and #%00000011              ;get 2 LSB from first part of LSFR
        sta BowserFlamePRandomOfs,x ;set here
        tay                         ;use as offset
        lda FlameYPosData,y         ;load vertical position based on pseudorandom offset