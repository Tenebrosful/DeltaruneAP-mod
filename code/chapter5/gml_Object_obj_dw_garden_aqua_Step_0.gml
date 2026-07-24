/// PATCH

/// BEFORE
    if (scr_trigcheck("cut1"))
/// CODE
    apdata = AP_get_location_reward_data(284);
/// END


/// REPLACE
    c_msgsetloc(0, "* You hear me^1? Make sure they don't get past here and find that FEATHER./", "obj_dw_garden_aqua_slash_Step_0_gml_185_0");
    c_facenext("no_name", 0);
    c_msgnextloc("* Why?/", "obj_dw_garden_aqua_slash_Step_0_gml_187_0");
    c_facenext("seth", 0);
    c_msgnextloc("* Because..^1. it'll let them get to the next area!/", "obj_dw_garden_aqua_slash_Step_0_gml_189_0");
/// CODE
    c_msgsetloc(0, "* You hear me^1? Make sure they don't get past here and find that {0}./", string(apdata.itemName), "obj_dw_garden_aqua_slash_Step_0_gml_185_0");
    c_facenext("no_name", 0);
    c_msgnextloc("* Why?/", "obj_dw_garden_aqua_slash_Step_0_gml_187_0");
    c_facenext("seth", 0);
    c_msgnextloc("* Because..^1. it'll let them progress!/", "obj_dw_garden_aqua_slash_Step_0_gml_189_0");
/// END

/// REPLACE
        c_msgnextloc("* What^1? Are you going to ask if you can get to the feather?/", "obj_dw_garden_aqua_slash_Step_0_gml_388_0");
/// CODE
        c_msgnextloc("* What^1? Are you going to ask if you can get to the thing?/", "obj_dw_garden_aqua_slash_Step_0_gml_388_0");
/// END

/// REPLACE
        c_msgnextloc("\\E2* You give us that cool feather?/%", "obj_dw_garden_aqua_slash_Step_0_gml_485_0");
/// CODE
        c_msgnextloc("\\E2* You give us that cool..^1. Uh^1, thing?/%", "obj_dw_garden_aqua_slash_Step_0_gml_485_0");
/// END

/// REPLACE
            sprite_index = usprite;
        }
        
        with (fl_left)
            instance_destroy();
/// CODE
            sprite_index = usprite;
        }
        
        with (fl_left)
            instance_destroy();
/// END


/// REPLACE
    c_msgsetsubloc(0, "~1* I know^1! Behind me is a really~2special item!/", (global.lang == "ja") ? "\\m0\t\t\t" : "\\m0\t\t", (global.lang == "ja") ? "&\t\t\t\t" : "&\t\t", "obj_dw_garden_aqua_slash_Step_0_gml_779_0");
    c_msgnextsubloc("~1* You three should take it!/", (global.lang == "ja") ? "\\m0\t\t\t" : "\\m0\t\t", (global.lang == "ja") ? "&\t\t\t\t" : "&\t\t", "obj_dw_garden_aqua_slash_Step_0_gml_780_0");
/// CODE
    c_msgsetsubloc(0, "~1* I know^1! Here is a really~2special item!/", (global.lang == "ja") ? "\\m0\t\t\t" : "\\m0\t\t", (global.lang == "ja") ? "&\t\t\t\t" : "&\t\t", "obj_dw_garden_aqua_slash_Step_0_gml_779_0");
    c_msgnextsubloc("~1* I took it to keep it safe^1,~2but now you three should~2take it!/", (global.lang == "ja") ? "\\m0\t\t\t" : "\\m0\t\t", (global.lang == "ja") ? "&\t\t\t\t" : "&\t\t", "obj_dw_garden_aqua_slash_Step_0_gml_780_0");
/// END

/// REPLACE
    c_msgsetsubloc(0, "~1* ..^1. oh^1! Can you do me a~2favor^1? Make sure no one~2else takes that feather!/%", (global.lang == "ja") ? "\\m0\t\t\t" : "\\m0\t\t", (global.lang == "ja") ? "&\t\t\t\t" : "&\t\t", "obj_dw_garden_aqua_slash_Step_0_gml_849_0");
/// CODE
    c_msgsetsubloc(0, "~1* ..^1. oh^1! Can you do me a~2favor^1? Make sure no one~2else takes the item!/%", (global.lang == "ja") ? "\\m0\t\t\t" : "\\m0\t\t", (global.lang == "ja") ? "&\t\t\t\t" : "&\t\t", "obj_dw_garden_aqua_slash_Step_0_gml_849_0");
/// END

/// REPLACE
    if (scr_flag_get(1889) == 2)
        c_msgnextloc("\\E0* ..^1. wonder if that feather can really get us through?/%", "obj_dw_garden_aqua_slash_Step_0_gml_911_0");
    else
        c_msgnextloc("\\E0* ..^1. wonder what the deal with that feather thing is?/%", "obj_dw_garden_aqua_slash_Step_0_gml_915_0");
/// CODE
    c_msgnextloc("\\E0* ..^1. wonder what the deal with that weird thing is?/", "obj_dw_garden_aqua_slash_Step_0_gml_915_0");
    c_facenext("no_name", "0");
    c_msgnextloc(string("* (You got {0}.)/%", AP_get_location_reward_text(258)));
    AP_sendLocation(284);
/// END

/// AFTER
    global.tempflag[51] = 0;
    scr_caterpillar_interpolate("all");
// CODE
    scr_flag_set(1311, 0);
/// END