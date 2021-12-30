GetCent:  tya                         ;send central position adder to A
          adc Enemy_Y_Position,x      ;add to current vertical coordinate
          sta RedPTroopaCenterYPos,x  ;store as central vertical coordinate