InitFireworks:
          lda FrenzyEnemyTimer         ;if timer not expired yet, branch to leave
          bne ExitFWk
          lda #$20                     ;otherwise reset timer
          sta FrenzyEnemyTimer
          dec FireworksCounter         ;decrement for each explosion
          ldy #$06                     ;start at last slot