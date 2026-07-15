/// IMPORT
scr_populatechars();

if (!init)
{
    prophecy[0] = instance_create(720, 1540, obj_dw_church_prophecy);
    var gen = scr_genmarker("prop1");
    setxy(gen.x + 150, gen.y + 90, prophecy[0]);
    prophecy[0].extflag = "ap";
    
    with (obj_dw_church_prophecy)
    {
        depth = 699990;
        fade_edges = true;
    }
    
    init = 1;
}

with (obj_mainchara)
    ignoredepth = 0;

var prophecyactive = scr_trigcheck("propactive");
roomglow.active = prophecyactive;

with (obj_dw_church_prophecy)
    active = prophecyactive;

if (con == 0 && prophecyactive && global.customflags[30] == 0)
{
    con = 1;
    global.interact = 1;
}

if (con == 1)
{
    global.interact = 1;
    cutscene_master = scr_cutscene_make();
    scr_maincharacters_actors();
    con = 1.1;
    
    with (obj_roomglow)
        create_highlight(1409);
}

if (con == 1.1)
{
    con = 2;
    debug_print("this");
    printval("version");
    c_pannable(1);
    c_pan(180, 240, 32);
    c_sel(kr);
    c_facing("r");
    c_sel(su);
    c_facing("r");
    c_sel(ra);
    c_facing("r");
    c_sel(kr);
    c_walkdirect(480, 470, 32);
    c_sel(su);
    c_walkdirect(426, 454, 32);
    c_sel(ra);
    c_walkdirect(520, 460, 32);
    c_wait(32);
    c_sel(kr);
    c_facing("u");
    c_sel(su);
    c_facing("u");
    c_sel(ra);
    c_facing("u");
    c_wait(30);
    c_msgside("bottom");
    c_speaker("susie");
    c_msgsetloc(0, "\\E6* The angels?/", "obj_ch4_DCA08A_slash_Step_0_gml_70_0");
    c_msgnextloc("\\E1* I thought there was only one we had to worry about./", "obj_ch4_DCA08A_slash_Step_0_gml_71_0");
    c_facenext("ralsei", "4");
    c_msgnextloc("\\E4* Well^1, in our world^1, or \"island\"^1, there's just the one./", "obj_ch4_DCA08A_slash_Step_0_gml_73_0");
    c_msgnextloc("\\E5* There's only one per world^1, but the others help us out./", "obj_ch4_DCA08A_slash_Step_0_gml_74_0");
    c_msgnextloc("\\EA* If you've seen Kris get something from seemingly nowhere.../", "obj_ch4_DCA08A_slash_Step_0_gml_74_0");
    c_msgnextloc("\\EA* The other angels are likely sending them./", "obj_ch4_DCA08A_slash_Step_0_gml_74_0");
    c_facenext("susie", "6");
    c_msgnextloc("\\E6* Are they also where Kris sends all the cool stuff we get?/", "obj_ch4_DCA08A_slash_Step_0_gml_76_0");
    c_facenext("ralsei", "Q");
    c_msgnextloc("\\EQ* Yes^1! When Kris gets an item^1, typically it's for the other worlds./", "obj_ch4_DCA08A_slash_Step_0_gml_74_0");
    c_msgnextloc("\\EI* So^1, Kris sends it to them instead^1, since the item's no use for us./", "obj_ch4_DCA08A_slash_Step_0_gml_74_0");
    c_facenext("susie", "A");
    c_msgnextloc("\\EA* If the angels give us useful stuff^1, why are we trying to.../", "obj_ch4_DCA08A_slash_Step_0_gml_77_0");
    c_msgnextloc("\\EK* Uh^1, stop them?/", "obj_ch4_DCA08A_slash_Step_0_gml_77_0");
    c_facenext("ralsei", "5");
    c_msgnextloc("\\E5* Well^1, you see how it says their goal is to \"see the end\"?/", "obj_ch4_DCA08A_slash_Step_0_gml_74_0");
    c_msgnextloc("\\Ea* From what I understand^1, it quite literally means the end of the world./", "obj_ch4_DCA08A_slash_Step_0_gml_74_0");
    c_msgnextloc("\\Ec* ...The Roaring./", "obj_ch4_DCA08A_slash_Step_0_gml_74_0");
    c_facenext("susie", "C");
    c_msgnextloc("\\EC* Oh./", "obj_ch4_DCA08A_slash_Step_0_gml_77_0");
    c_msgnextloc("\\ED* Guess..^1. that means the angels aren't really that good after all./", "obj_ch4_DCA08A_slash_Step_0_gml_77_0");
    c_facenext("ralsei", "j");
    c_msgnextloc("\\Ej* They..^1. are not./%", "obj_ch4_DCA08A_slash_Step_0_gml_74_0");
    c_talk();
    c_wait_talk();
    c_wait(5);
    c_pannable(1);
    c_panobj(kr_actor, 20);
    c_wait(21);
    c_sel(kr);
    c_facing("d");
    c_pannable(0);
    c_actortokris();
    c_actortocaterpillar();
    c_terminatekillactors();
}

if (con == 2 && !i_ex(cutscene_master))
{
    global.interact = 0;
    global.customflags[30] = 1;
    con = 99;
}
