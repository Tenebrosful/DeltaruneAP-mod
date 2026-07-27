/// PATCH

/// REPLACE
                sprite_index = spr_yellow_evidence;
                image_index = 13;
/// CODE
                sprite_index = spr_archipelago;
                image_index = 0;
/// END

/// REPLACE
        msgset_add(stringsetloc("This PETAL FEATHER...&you stole it&from the shrine!/%", "obj_yellow_trial_manager_slash_Create_0_gml_1173_0"), perp_flowery.x + 15, perp_flowery.y - 15, 13, 50, function()
/// CODE
        apdata = AP_get_location_reward_data(284);
        msgset_add(stringsetloc(string("This {0}...&you stole it&from the shrine!/%", apdata.itemName), "obj_yellow_trial_manager_slash_Create_0_gml_1173_0"), perp_flowery.x + 15, perp_flowery.y - 15, 13, 50, function()
/// END

/// REPLACE
            with (instance_create(obj_trial_perp.x - 60, obj_trial_perp.y - 170, obj_bulletparent))
/// CODE
            with (instance_create(obj_trial_perp.x - 83, obj_trial_perp.y - 193, obj_bulletparent))
/// END