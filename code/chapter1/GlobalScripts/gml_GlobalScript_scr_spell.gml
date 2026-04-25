/// PATCH

/// AFTER
            scr_healitemspell(60);
            item_use = true;
            break;
/// CODE
        
        case 216:
            if (global.AP_balancing == 1)
                scr_healitemspell(40);
            else
                scr_healitemspell(80);
            
            item_use = true;
            break;
        
        case 217:
            break;
        
        case 218:
            scr_healitemspell(scr_teaamount(1, global.char[star]));
            item_use = true;
            break;
        
        case 219:
            scr_healitemspell(scr_teaamount(4, global.char[star]));
            item_use = true;
            break;
        
        case 220:
            scr_healitemspell(scr_teaamount(3, global.char[star]));
            item_use = true;
            break;
        
        case 221:
            scr_healitemspell(scr_teaamount(2, global.char[star]));
            item_use = true;
            break;
        
        case 222:
            scr_healitemspell(60);
            item_use = true;
            break;
        
        case 223:
            scr_healitemspell(120);
            item_use = true;
            break;
        
        case 224:
            if (global.AP_balancing == 1)
                scr_healitemspell(50);
            else
                scr_healitemspell(100);
            
            item_use = true;
            break;
        
        case 225:
            scr_healallitemspell(30);
            item_use = true;
            break;
        
        case 226:
            var healamount = (global.char[star] == 1) ? 100 : 90;
            scr_healitemspell(healamount);
            item_use = true;
            break;
        
        case 227:
            break;
        
        case 228:
            break;
        
        case 229:
            break;
        
        case 230:
            var healamount = 10;
            
            for (var __j = 0; __j < 3; __j++)
            {
                if (global.char[__j] > 0)
                {
                    healamount = 10;
                    star = __j;
                    
                    if (global.hp[global.char[star]] <= 0)
                        healamount = ceil(global.maxhp[global.char[star]] / 4) + abs(global.hp[global.char[star]]);
                    
                    scr_healitemspell(healamount);
                }
            }
            
            item_use = true;
            break;
        
        case 231:
            var healamount = 50;
            
            for (var __j = 0; __j < 3; __j++)
            {
                if (global.char[__j] > 0)
                {
                    healamount = 50;
                    star = __j;
                    
                    if (global.hp[global.char[star]] <= 0)
                        healamount = 999;
                    
                    scr_healitemspell(healamount);
                }
            }
            
            item_use = true;
            break;
        
        case 232:
            if (i_ex(global.charinstance[star]))
                global.charinstance[star].poisonamount = 60;
            
            snd_play(snd_hurt1);
            var healanim = scr_healitemspell(40);
            healanim.particlecolor = c_fuchsia;
            item_use = true;
            break;
        
        case 233:
            break;
        
        case 234:
            if (global.AP_balancing == 1)
                scr_healitemspell(50);
            else
                scr_healitemspell(100);
            
            item_use = true;
            break;
        
        case 235:
            break;
        
        case 236:
            scr_healitemspell(20);
            item_use = true;
            break;
        
        case 237:
            if (global.AP_balancing == 1)
                scr_healitemspell(40);
            else
                scr_healitemspell(80);
            
            item_use = true;
            break;
        
        case 238:
            if (global.AP_balancing == 1)
                scr_healallitemspell(50);
            else
                scr_healallitemspell(100);
            
            item_use = true;
            break;
        
        case 239:
            if (global.AP_balancing == 1)
                scr_healitemspell(70);
            else
                scr_healitemspell(140);
            
            item_use = true;
            break;
        
        case 260:
            if (global.char[star] == 1)
                scr_healitemspell(400);
            
            if (global.char[star] == 2)
                scr_healitemspell(40);
            
            if (global.char[star] == 3)
                scr_healitemspell(40);
            
            if (global.char[star] == 4)
                scr_healitemspell(40);
            
            item_use = true;
            break;
        
        case 261:
            if (global.AP_balancing == 1)
                scr_healitemspell(40);
            else
                scr_healitemspell(115);
            
            item_use = true;
            break;
        
        case 262:
            if (global.AP_balancing == 1)
                scr_healitemspell(60);
            else
                scr_healitemspell(160);
            
            item_use = true;
            break;
        
        case 263:
            reviveamt = ceil(global.maxhp[global.char[star]]) + abs(global.hp[global.char[star]]);
            scr_healitemspell(reviveamt);
            item_use = true;
            break; 
/// END