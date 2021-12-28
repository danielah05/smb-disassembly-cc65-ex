ChkNoEn:  lda Enemy_Flag,x        ;check enemy buffer flag for non-active enemy slot
          beq CreateL             ;branch out of loop if found
          dex                     ;otherwise check next slot
          bpl ChkNoEn             ;branch until all slots are checked
          bmi RetEOfs             ;if no empty slots were found, branch to leave