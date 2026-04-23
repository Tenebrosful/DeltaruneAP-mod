/// IMPORT
if (init)
    event_inherited();

if (type == 4 && init == 1)
{
    scr_84_set_draw_font("mainbig");
    
    if (menu == 0)
        draw_set_color(c_ltgray);
    else
        draw_set_color(c_dkgray);
    
    if (jp)
    {
        var memfont = draw_get_font();
        draw_set_font(fnt_ja_kakugo);
        draw_text_transformed(xx + 60, yy + 140, stringsetloc("HELD", "obj_fusionmenu_slash_Draw_0_gml_154_0"), 1, 1, 0);
        draw_set_font(memfont);
    }
    else
    {
        draw_set_font(scr_84_get_font("dotumche"));
        draw_text_transformed(xx + 60, yy + 140, stringset("POCKET"), 1, 1, 0);
    }
    
    if (menu == 1)
        draw_set_color(c_ltgray);
    
    if (menu < 1)
        draw_set_color(c_dkgray);
    
    if (jp)
    {
        var memfont = draw_get_font();
        draw_set_font(fnt_ja_kakugo);
        draw_text_transformed(xx + 60, yy + 290, stringsetloc("RESERVE", "obj_fusionmenu_slash_Draw_0_gml_159_0"), 1, 1, 0);
        draw_set_font(memfont);
    }
    else
    {
        draw_text_transformed(xx + 60, yy + 290, "STORAGE", 1, 1, 0);
    }
    
    if (jp)
    {
        var memfont = draw_get_font();
        draw_set_font(fnt_ja_kakugo);
        draw_text_transformed(xx + 60, yy + 360 + 14, stringsetloc("Page ", "obj_fusionmenu_slash_Draw_0_gml_161_0"), 1, 1, 0);
        draw_text_transformed(xx + 60, yy + 380 + 14, string((floor(menuScrollCurrent[1]) / 12) + 1) + "/" + string(floor(global.flag[64] / 12)), 1, 1, 0);
        draw_set_font(memfont);
    }
    else
    {
        draw_text_transformed(xx + 60, yy + 360, stringsetloc("Page ", "obj_fusionmenu_slash_Draw_0_gml_161_0"), 1, 1, 0);
        draw_text_transformed(xx + 60, yy + 380, string((floor(menuScrollCurrent[1]) / 12) + 1) + "/" + string(floor(global.flag[64] / 12)), 1, 1, 0);
    }
}
