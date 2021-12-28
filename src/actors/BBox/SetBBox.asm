SetBBox:  sta Enemy_BoundBoxCtrl,x    ;set bounding box control here
          lda #$02                    ;set moving direction for left
          sta Enemy_MovingDir,x