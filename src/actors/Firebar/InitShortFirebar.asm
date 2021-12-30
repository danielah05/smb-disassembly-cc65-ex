InitShortFirebar:
      lda #$00                    ;initialize low byte of spin state
      sta FirebarSpinState_Low,x
      lda Enemy_ID,x              ;subtract $1b from enemy identifier
      sec                         ;to get proper offset for firebar data
      sbc #$1b
      tay
      lda FirebarSpinSpdData,y    ;get spinning speed of firebar
      sta FirebarSpinSpeed,x
      lda FirebarSpinDirData,y    ;get spinning direction of firebar
      sta FirebarSpinDirection,x
      lda Enemy_Y_Position,x
      clc                         ;add four pixels to vertical coordinate
      adc #$04
      sta Enemy_Y_Position,x
      lda Enemy_X_Position,x
      clc                         ;add four pixels to horizontal coordinate
      adc #$04
      sta Enemy_X_Position,x
      lda Enemy_PageLoc,x
      adc #$00                    ;add carry to page location
      sta Enemy_PageLoc,x
      jmp TallBBox2               ;set bounding box control (not used) and leave