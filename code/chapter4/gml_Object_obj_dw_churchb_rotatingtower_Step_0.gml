/// PATCH

/// APPEND
if (i_ex(organiknpc2))
{
    with (organiknpc2)
    {
        if (global.plot < 244)
            instance_destroy();
        
        if (myinteract == 3)
        {
            global.interact = 1;
            scr_speaker("no_name");
            msgsetloc(0, "* Should you enter this door and return^1, we'll leave this side of the mind./", "obj_dw_churchb_rotatingtower_slash_Step_0_gml_651_0");
            msgnextloc("* But you missed nothing^1, right^1?&* Not even the \\cYGallery\\cW?/", "obj_dw_churchb_rotatingtower_slash_Step_0_gml_651_0");
            msgnextloc("* We are all liars^1, after all./%", "obj_dw_churchb_rotatingtower_slash_Step_0_gml_651_0");
            d_make();
            myinteract = 999;
        }
        
        if (myinteract > 3 && d_ex())
        {
            var trig = 0;
            
            if (!i_ex(obj_writer))
                trig = 1;
            
            with (obj_writer)
            {
                if (halt)
                    trig = 1;
            }
            
            if (!trig)
                marker.image_index += 0.25;
        }
        
        if (myinteract == 999 && !d_ex())
        {
            myinteract = 0;
            marker.image_index = 0;
            global.interact = 0;
        }
    }
}
/// END