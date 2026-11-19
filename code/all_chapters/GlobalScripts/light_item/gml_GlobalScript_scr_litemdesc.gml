/// IMPORT
function scr_litemdesc(arg0)
{
    if (global.chapter = 5 && scr_sideb_active() && arg0 != 20)
    {
        scr_speaker("no_name");
        scr_text(1455);
        exit;
    }
    
    global.msg[0] = stringsetloc("* Your eyesight became blurry./%", "scr_litemdesc_slash_scr_litemdesc_gml_1_0");
    
    switch (arg0)
    {
        case 0:
            global.msg[0] = stringsetloc("* Your heartbeat quickened./%", "scr_litemdesc_slash_scr_litemdesc_gml_5_0");
            break;
        
        case 1:
            global.msg[0] = stringsetloc("* \"Hot Chocolate\" - Topped with home-made marshmallows in the shape of bunnies./%", "scr_litemdesc_slash_scr_litemdesc_gml_8_0");
            break;
        
        case 2:
            global.msg[0] = stringsetloc("* \"Pencil\" - Weapon 1 AT&* Mightier than a sword?&* Maybe equal at best./%", "scr_litemdesc_slash_scr_litemdesc_gml_11_0");
            break;
        
        case 3:
            global.msg[0] = stringsetloc("* \"Bandage\" - Heals 10 HP&* It has cartoon characters on it./%", "scr_litemdesc_slash_scr_litemdesc_gml_14_0");
            break;
        
        case 4:
            global.msg[0] = stringsetloc("* \"Bouquet\" - A bouquet of beautiful flowers in many colors./", "scr_litemdesc_slash_scr_litemdesc_gml_17_0");
            global.msg[1] = stringsetloc("* Perhaps it could be offered to someone./%", "scr_litemdesc_slash_scr_litemdesc_gml_18_0");
            break;
        
        case 5:
            global.msg[0] = stringsetloc("* \"Ball of Junk\" - A small ball of accumulated things in your pocket./%", "scr_litemdesc_slash_scr_litemdesc_gml_21_0");
            
            if (scr_itemcheck(1))
            {
                global.msg[0] = stringsetloc("* \"Ball of Junk\" - A small ball of accumulated things in your pocket./", "scr_litemdesc_slash_scr_litemdesc_gml_25_0");
                global.msg[1] = stringsetloc("* It smells like scratch'n'sniff marshmallow stickers./%", "scr_litemdesc_slash_scr_litemdesc_gml_26_0");
            }
            
            break;
        
        case 6:
            global.msg[0] = stringsetloc("* \"Halloween Pencil\" - Weapon 1 AT&* Orange with black bats on it./%", "scr_litemdesc_slash_scr_litemdesc_gml_30_0");
            break;
        
        case 7:
            global.msg[0] = stringsetloc("* \"Lucky Pencil\" - Weapon 1 AT&* Covered in green clovers and rainbows./%", "scr_litemdesc_slash_scr_litemdesc_gml_33_0");
            break;
        
        case 8:
            global.msg[0] = stringsetloc("* \"Egg\" - Not too important^1, not too unimportant./%", "scr_litemdesc_slash_scr_litemdesc_gml_36_0");
            break;
        
        case 9:
            global.msg[0] = stringsetloc("* \"Cards\" - The Jack of Spades^1, and the Rules Card./%", "scr_litemdesc_slash_scr_litemdesc_gml_39_0");
            break;
        
        case 10:
            global.msg[0] = stringsetloc("* \"Box of Heart Candy\" - It's not yours^1. Will that stop you?/%", "scr_litemdesc_slash_scr_litemdesc_gml_42_0");
            break;
        
        case 11:
            global.msg[0] = stringsetloc("* There is a small shard of something in your pocket./", "scr_litemdesc_slash_scr_litemdesc_gml_45_0");
            global.msg[1] = stringsetloc("* It feels like glass, but.../%", "scr_litemdesc_slash_scr_litemdesc_gml_46_0");
            break;
        
        case 12:
            global.msg[0] = stringsetloc("* \"Eraser\" - Weapon 1 AT&* Pink^1, it bounces when thrown on the ground./%", "scr_litemdesc_slash_scr_litemdesc_gml_49_0");
            break;
        
        case 13:
            global.msg[0] = stringsetloc("* \"Mechanical Pencil\" - 1 AT&* It's tempting to click it repeatedly./%", "scr_litemdesc_slash_scr_litemdesc_gml_52_0");
            break;
        
        case 14:
            global.msg[0] = stringsetloc("* \"Wristwatch\" - Armor 1 DF&* Maybe an expensive antique.&* Stuck before half past noon./%", "scr_litemdesc_slash_scr_litemdesc_gml_55_0");
            break;
        
        case 15:
            global.msg[0] = stringsetloc("* \"Holiday Pencil\" - 1 AT&* A festive candycane pencil.&* Do not eat./%", "scr_litemdesc_slash_scr_litemdesc_gml_59_0");
            break;
        
        case 16:
            global.msg[0] = stringsetloc("* \"CactusNeedle\" - 2 AT&* Ouch! ... It's somewhat sentimental in a way./%", "scr_litemdesc_slash_scr_litemdesc_gml_62_0");
            break;
        
        case 17:
            global.msg[0] = stringsetloc("* \"BlackShard\" - A small chip of extremely hard glass.&* Oddly^1, it's nearly opaque./%", "scr_litemdesc_slash_scr_litemdesc_gml_65_0");
            break;
        
        case 18:
            global.msg[0] = stringsetloc("* \"QuillPen\" - 1 AT&* A pen fashioned from a white feather./%", "scr_litemdesc_slash_scr_litemdesc_gml_68_0");
            break;
        
        case 19:
            global.msg[0] = stringsetloc("* \"Honey Toast\" - A food that a parent could eat./%", "scr_litemdesc_slash_scr_litemdesc_gml_71_0");
            break;
        
        case 20:
            global.msg[0] = stringsetloc("* \"Bread\" - A loaf of bread^1. Tends to leave crumbs wherever it goes./%", "scr_litemdesc_slash_scr_litemdesc_gml_74_0");
            break;
        
        case 21:
            global.msg[0] = stringsetloc("* \"Seeds\" - The seed of the golden flower^1./%", "scr_litemdesc_slash_scr_litemdesc_gml_77_0");
            break;
        
        case 22:
            global.msg[0] = stringsetloc("* \"Pencil2\" - 2 AT&* It's a No. 2 Pencil^1. ..^1. that&doesn't make it any stronger./%", "scr_litemdesc_slash_scr_litemdesc_gml_80_0");
            break;
        
        case 23:
            global.msg[0] = stringsetloc("* \"Petal\" - 0 AT&* A cyan colored petal^1. It's not&a weapon^1, but it's nice./%", "scr_litemdesc_slash_scr_litemdesc_gml_83_0");
            break;
        
        case 1000:
            global.msg[0] = stringsetloc("* \"Multitool\" - 5 AT&* Useful in any situation.&* Watch out for sharp ends!/%", "scr_litemdesc_slash_scr_litemdesc_gml_68_0");
            break;
    }
}
