/// PATCH

/// AFTER
                case "item":
                    haveroom = scr_getinventoryspace() + scr_getpocketspace();
                    break;
/// CODE
                
                case "check":
                    haveroom = true;
                    t_itemid = prizeitemid[selectedPrize];
                    break;
/// END