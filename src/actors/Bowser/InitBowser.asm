InitBowser:
      jsr DuplicateEnemyObj     ;jump to create another bowser object
      stx BowserFront_Offset    ;save offset of first here
      lda #$00
      sta BowserBodyControls    ;initialize bowser's body controls
      sta BridgeCollapseOffset  ;and bridge collapse offset
      lda Enemy_X_Position,x
      sta BowserOrigXPos        ;store original horizontal position here
      lda #$df
      sta BowserFireBreathTimer ;store something here
      sta Enemy_MovingDir,x     ;and in moving direction
      lda #$20
      sta BowserFeetCounter     ;set bowser's feet timer and in enemy timer
      sta EnemyFrameTimer,x
      lda #$05
      sta BowserHitPoints       ;give bowser 5 hit points
      lsr
      sta BowserMovementSpeed   ;set default movement speed here
      rts