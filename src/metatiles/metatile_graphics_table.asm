;METATILE GRAPHICS TABLE

.define MetatileGraphics Palette0_MTiles, Palette1_MTiles, Palette2_MTiles, Palette3_MTiles
MetatileGraphics_Low: .lobytes MetatileGraphics
MetatileGraphics_High: .hibytes MetatileGraphics

.include "mtiles/Palette0_MTiles.asm"

.include "mtiles/Palette1_MTiles.asm"

.include "mtiles/Palette2_MTiles.asm"
      
.include "mtiles/Palette3_MTiles.asm"

;-------------------------------------------------------------------------------------
;VRAM BUFFER DATA FOR LOCATIONS IN PRG-ROM

.include "palette/WaterPaletteData.asm"

.include "palette/GroundPaletteData.asm"

.include "palette/UndergroundPaletteData.asm"

.include "palette/CastlePaletteData.asm"

.include "palette/DaySnowPaletteData.asm"

.include "palette/NightSnowPaletteData.asm"

.include "palette/MushroomPaletteData.asm"

.include "palette/BowserPaletteData.asm"

.include "text/MarioThanksMessage.asm"

.include "text/LuigiThanksMessage.asm"

.include "text/MushroomRetainerSaved.asm"

.include "text/PrincessSaved1.asm"

.include "text/PrincessSaved2.asm"

.include "text/WorldSelectMessage1.asm"

.include "text/WorldSelectMessage2.asm"