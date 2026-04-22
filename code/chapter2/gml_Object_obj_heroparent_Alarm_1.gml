/// PATCH

/// BEFORE
    
    if (i_ex(obj_rouxls_enemy))
        dm.depth = -999999;
/// CODE
    spell = 0;
    
    if (object_index == obj_herosusie && global.charweapon[2] == 54)
    {
        star = 1;
        var healamt = ceil(global.maxhp[2] * 0.1);
        scr_healitemspell(healamt);
    }
/// END

/// BEFORE
        if (points == 150)
        {
            attack.image_xscale = 2.5;
/// CODE
        if (global.charweapon[global.char[myself]] == 26)
        {
            attack.sprite_index = spr_attack_shard;
            attack.image_speed = 0.334;
        }
        
/// END