/// PATCH

/// AFTER
        if (global.charweapon[1] == 8)
            global.monstergold[3] += floor(global.monstergold[3] / 20);
/// CODE
        global.monstergold[3] *= 1 + (scr_armorcheck_equipped_party(8) * 0.05);
        global.monstergold[3] *= 1 + (scr_armorcheck_equipped_party(21) * 0.3);
        global.monstergold[3] -= global.monstergold[3] * (scr_armorcheck_equipped_party(54) * 0.1);
        global.monstergold[3] = floor(global.monstergold[3]);
/// END

/// REPLACE
            if (itemtarget == 0 || itemtarget == 2)
                scr_itemconsumeb();
/// CODE
            if (itemtarget == 0 || itemtarget == 2)
            {
                var item_use = false;
                var _tensionhealed = 0;
                
                if (tempitem[global.bmenucoord[4][global.charturn]][global.charturn] == 27)
                {
                    scr_tensionheal(80);
                    _tensionhealed = 1;
                    item_use = true;
                }
                
                if (tempitem[global.bmenucoord[4][global.charturn]][global.charturn] == 28)
                {
                    scr_tensionheal(ceil(global.maxtension / 2));
                    _tensionhealed = 1;
                    item_use = true;
                }
                
                if (tempitem[global.bmenucoord[4][global.charturn]][global.charturn] == 29)
                {
                    scr_tensionheal(ceil(global.maxtension));
                    _tensionhealed = 1;
                    item_use = true;
                }
                
                if (_tensionhealed)
                {
                    var _drivenoise = snd_play(snd_cardrive);
                    snd_pitch(_drivenoise, 1.4);
                    snd_volume(_drivenoise, 0.8, 0);
                    
                    with (global.charinstance[global.charturn])
                    {
                        ha = instance_create(x, y, obj_healanim);
                        ha.target = id;
                        ha.particlecolor = c_orange;
                    }
                    
                    scr_itemshift_temp(global.bmenucoord[4][global.charturn], global.charturn);
                    scr_nexthero();
                }
                
                if (!_tensionhealed)
                    scr_itemconsumeb();
            }
/// END