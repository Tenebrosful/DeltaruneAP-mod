/// PATCH

/// BEFORE
        default:
/// CODE
        case "ap":
            ran = 0;
            textstring[0] = stringsetloc("TO EACH ISLAND THE ANGELS DESCEND.#THEIR ONLY GOAL: TO SEE THE END.", "scr_prophecytext_slash_scr_prophecytext_gml_137_0");
            
            if (room == room_dw_churchb_libraryconnector)
            {
                switch (irandom_range(1, 3))
                {
                    case 1:
                        textstring[0] = stringsetloc("THE VISIT WITH THE BURGER MONARCH#REMAINS ETERNAL.", "scr_prophecytext_slash_scr_prophecytext_gml_137_0");
                        break;
                    
                    case 2:
                        textstring[0] = stringsetloc("THE ANGEL,#FULFILLING THE PROPHECY OF DELTARUNE", "scr_prophecytext_slash_scr_prophecytext_gml_137_0");
                        break;
                    
                    case 3:
                        textstring[0] = stringsetloc("THE ANGELS WILL SEND#CHECKS TO AND FRO", "scr_prophecytext_slash_scr_prophecytext_gml_137_0");
                        break;
                }
            }
            
            break;
        
/// END