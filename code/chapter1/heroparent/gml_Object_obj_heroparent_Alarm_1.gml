/// PATCH

/// AFTER
    dm = instance_create(global.monsterx[global.chartarget[myself]], (global.monstery[global.chartarget[myself]] - (global.hittarget[global.chartarget[myself]] * 20)) + 20, obj_dmgwriter);
    dm.type = char - 1;
    dm.delay = 8;
/// CODE
    spell = 0;
    
    if (object_index == obj_herosusie && global.charweapon[2] == 54)
    {
        if (instance_exists(obj_lancerboss2))
            star = 0;
        else if (global.charauto[2] == 1)
            star = 2;
        else
            star = 1;
        
        var healamt = ceil(global.maxhp[2] * 0.1);
        scr_healitemspell(healamt);
    }
    
/// END

/// AFTER
        if (object_index == obj_heroralsei)
        {
            attack.sprite_index = spr_attack_slap1;
            attack.maxindex = 4;
            attack.image_speed = 0.5;
        }
        
/// CODE
        if (global.charweapon[global.char[myself]] == 26)
        {
            attack.sprite_index = spr_attack_shard;
            attack.image_speed = 0.334;
        }
        
/// END