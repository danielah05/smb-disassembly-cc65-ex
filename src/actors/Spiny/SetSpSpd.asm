SetSpSpd: jsr SmallBBox              ;set bounding box control, init attributes, lose contents of A
          ldy #$02                   ;(putting this call elsewhere will preserve A)
          sta Enemy_X_Speed,x        ;set horizontal speed to zero because previous contents
          cmp #$00                   ;of A were lost...branch here will never be taken for
          bmi SpinyRte               ;the same reason
          dey