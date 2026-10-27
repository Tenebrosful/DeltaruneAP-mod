/// PATCH

/// AFTER
            gerson.sprite_index = spr_gerson_spare;
            gerson.image_speed = 0.5;
            
            with (obj_writer)
                instance_destroy();
            
            talktimer = 0;
            gerson.x += 74;
            gerson.image_xscale = -2;
/// CODE
            item_name = choose("AncientSweet", "ReviveMint", "DogDollar", "TensionGem", "BitterTear", "ShadowCrystal");
            array_push(obj_archipelago_toast_notificator.current_notification, new AP_toast_notification(item_name, c_green, "Old Man", "special"));
/// END