/// IMPORT
_bg = instance_create(0, 0, obj_shop_ch5_bg);
_bg.depth = depth + 10;
idletimer = 0;
idlefacer = 0;
talkfacer = 0;
talkbuffer = 0;
menu = 0;
submenu = 0;
global.typer = 6;
draw_set_color(c_white);
scr_84_set_draw_font("mainbig");
talktimer = 0;
cur_jewel = 0;
shopcharx = 0;
siner = 0;
item_currency = [];

for (i = 0; i < 20; i += 1)
{
    menuc[i] = 0;
    submenuc[i] = 0;
}

onebuffer = 0;
twobuffer = 0;
upbuffer = 0;
downbuffer = 0;
hold_up = 0;
hold_down = 0;
_up_pressed = 0;
_down_pressed = 0;
murder = 0;
moff = 415;

if (snd_is_playing(global.currentsong[1]))
    snd_free_all();

global.currentsong[0] = snd_init("shop_3.ogg");
global.currentsong[1] = mus_loop_ext(global.currentsong[0], 1, 0.95);
menu = 0;
menuc[0] = 0;
menuc[1] = 0;
menuc[2] = 0;
menuc[3] = 0;
menuc[4] = 0;
item0pic = spr_heart;
item1pic = spr_heart;
item2pic = spr_heart;
item3pic = spr_heart;
itemtotal = 4;
item[0] = 41;
item[1] = 30;
item[2] = 34;
item[3] = 32;
itemtype[0] = "item";
itemtype[1] = "weapon";
itemtype[2] = "armor";
itemtype[3] = "key";
itemtype[4] = "item";
itemtype[5] = "item";
itemtype[6] = "item";

shopdesc[0] = "CHECK#Will be#sent to the#Multiworld";
shopdesc[1] = "CHECK#Will be#sent to the#Multiworld";
shopdesc[2] = "CHECK#Will be#sent to the#Multiworld";
shopdesc[3] = "CHECK#Will be#sent to the#Multiworld";

items_data[0] = AP_get_location_reward_data(299)
items_data[1] = AP_get_location_reward_data(300)
items_data[2] = AP_get_location_reward_data(301)
items_data[3] = AP_get_location_reward_data(302)

for (i = 0; i < itemtotal; i += 1)
{
    if (itemtype[i] == "item")
    {
        scr_iteminfo(item[i]);
        shopitemname[i] = itemnameb;
        buyvalue[i] = value;
    }
    
    if (itemtype[i] == "armor")
    {
        scr_armorinfo(item[i]);
        shopitemname[i] = armornametemp;
        buyvalue[i] = value;
        itemdef[i] = armordftemp;
        canequip[i][1] = armorchar1temp;
        canequip[i][2] = armorchar2temp;
        canequip[i][3] = armorchar3temp;
    }
    
    if (itemtype[i] == "weapon")
    {
        scr_weaponinfo(item[i]);
        itematk[i] = weaponattemp;
        itemmagic[i] = weaponmagtemp;
        shopitemname[i] = weaponnametemp;
        canequip[i][1] = weaponchar1temp;
        canequip[i][2] = weaponchar2temp;
        canequip[i][3] = weaponchar3temp;
        buyvalue[i] = value;
    }

    if (i == 3)
    {
        item_currency[i] = UnknownEnum.Value_1;
        buyvalue[i] = 10;
    }

    shopitemname[i] = items_data[i].itemName;
    shop_item_flags[i] = items_data[i].flags;
    shopitemreceivername[i] = items_data[i].playerName;
    itemtype[i] = "check";
    item[i] = i + 299;
    AP_sendHint(i + 299);
    
    if (global.customflags[1000 + item[i]] == 1)
    {
        shopitemname[i] = "Out Of Stock";
        itemtype[i] = "checked";
        buyvalue[i] = "--";
    }
}

sell = 0;
bought = 0;
mainmessage = 0;
minimenuy = 220;
global.typer = 23;
scr_84_set_draw_font("mainbig");
sidemessage = 0;
selling = 0;
global.msc = 0;
glow = 0;
shx = 130;
soldo = 0;
global.faceemotion = 0;
an = 0;
talk_counter = 0;
nothingcount = 0;
selltype = "item";
selltotal = max(global.flag[64], 12);

for (i = 0; i < selltotal; i++)
{
    itemsellvalue[i] = 0;
    itemsellname[i] = "";
}

took_crystal = false;
_times_talked = 0;
_intro_text = stringsetloc("* The sunset...&* It's breathtaking,&isn't it?", "obj_shop_ch5_slash_Create_0_gml_180_0");

if (scr_flag_get(1846) >= 2)
    _intro_text = stringsetloc("* The sunset... will&it ever be this&beautiful again?", "obj_shop_ch5_slash_Create_0_gml_183_0");

_exit_text = stringsetloc("* That's right^1, go outside.&* It's beautiful./%", "obj_shop_ch5_slash_Create_0_gml_186_0");

if (scr_flag_get(1846) >= 2)
    _exit_text = stringsetloc("* Treasure this world^1, won't you?/%", "obj_shop_ch5_slash_Create_0_gml_189_0");

_music_fade = false;
_music_fade_out = false;
_music_overlay = false;
_music_alt[0] = -4;
_music_alt[1] = -4;
_talk_options = [stringsetloc("What is this place?", "obj_shop_ch5_slash_Create_0_gml_193_0"), stringsetloc("What's your name, human?", "obj_shop_ch5_slash_Create_0_gml_194_0"), stringsetloc("Human ears?", "obj_shop_ch5_slash_Create_0_gml_195_0"), stringsetloc("Other people?", "obj_shop_ch5_slash_Create_0_gml_196_0")];

load_dialogue = function(arg0)
{
    switch (arg0)
    {
        case UnknownEnum.Value_0:
            if (scr_flag_get(1768) == 0)
            {
                scr_flag_set(1768, 1);
                scr_speaker("no_name");
                msgsetloc(0, "* I've never seen a sunset so breathtaking.../", "obj_shop_ch5_slash_Create_0_gml_209_0");
                msgnextloc("* Tell me^1, was everything always this beautiful?/", "obj_shop_ch5_slash_Create_0_gml_210_0");
                msgnextloc("* Beautiful..^1. beautiful^1. Beautiful!/%", "obj_shop_ch5_slash_Create_0_gml_211_0");
            }
            else
            {
                scr_speaker("no_name");
                msgsetloc(0, "* Where I came from^1, the colors were bleak./", "obj_shop_ch5_slash_Create_0_gml_215_0");
                msgnextloc("* It was like looking at the world through a napkin./", "obj_shop_ch5_slash_Create_0_gml_216_0");
                msgnextloc("* Here^1, the sunset shines from the back of your eyes^1, like the afterglow of a light you stared at too long./", "obj_shop_ch5_slash_Create_0_gml_217_0");
                msgnextloc("* Hee hee.../%", "obj_shop_ch5_slash_Create_0_gml_218_0");
            }
            
            break;
        
        case UnknownEnum.Value_1:
            if (scr_flag_get(1769) == 0)
            {
                scr_flag_set(1769, 1);
                scr_speaker("no_name");
                msgsetloc(0, "* Right^1, of course^1, I'm also human^1. That's why I look and feel like a flower./", "obj_shop_ch5_slash_Create_0_gml_227_0");
                msgnextloc("* ..^1. then^1, what's my name?/", "obj_shop_ch5_slash_Create_0_gml_228_0");
                msgnextloc("* I suppose..^1. it depends on the color of the sunset./%", "obj_shop_ch5_slash_Create_0_gml_229_0");
            }
            else
            {
                scr_speaker("no_name");
                msgsetloc(0, "* Names^1, names^1, names^1! That's what everyone always thinks about./", "obj_shop_ch5_slash_Create_0_gml_233_0");
                msgnextloc("* But^1, what defines you is.../", "obj_shop_ch5_slash_Create_0_gml_234_0");
                msgnextloc("* ..^1. well^1, it's your body^1, isn't it?/%", "obj_shop_ch5_slash_Create_0_gml_235_0");
            }
            
            break;
        
        case UnknownEnum.Value_2:
            scr_speaker("no_name");
            msgsetloc(0, "* Listen^1, have you had ears before^1? Cute and fluffy ears?/", "obj_shop_ch5_slash_Create_0_gml_240_0");
            msgnextloc("* ..^1. you should try it./", "obj_shop_ch5_slash_Create_0_gml_241_0");
            var random_lines = [stringsetloc("* ..^1. not like you^1, long ears^1. Those seem like a fire hazard./%", "obj_shop_ch5_slash_Create_0_gml_244_0"), stringsetloc("* ..^1. especially you^1, purpleface^1. How do you even hear?/%", "obj_shop_ch5_slash_Create_0_gml_245_0"), stringsetloc("* Yes^1, you're nodding^1. Obviously you agree^1. Obviously./%", "obj_shop_ch5_slash_Create_0_gml_246_0")];
            msgnext(random_lines[irandom_range(0, array_length(random_lines) - 1)]);
            break;
        
        case UnknownEnum.Value_3:
            if (scr_flag_get(1770) == 0)
            {
                scr_flag_set(1770, 1);
                scr_speaker("no_name");
                msgsetloc(0, "* Asgore..^1. he seems happy^1. You should be happy for him^1, too./", "obj_shop_ch5_slash_Create_0_gml_258_0");
                msgnextloc("* Me^1? I've..^1. never been able to talk to him^1. For..^1. obvious reasons./", "obj_shop_ch5_slash_Create_0_gml_259_0");
                msgnextloc("* I know^1. It's selfish^1, if you say it out loud^1. Everything..^1. has been thanks to him./", "obj_shop_ch5_slash_Create_0_gml_260_0");
                msgnextloc("* Until now^1, I..^1. I couldn't really think about that./", "obj_shop_ch5_slash_Create_0_gml_261_0");
                msgnextloc("* .../", "obj_shop_ch5_slash_Create_0_gml_262_0");
                msgnextloc("* I can think now^1, though^1. I'll do my best to fit in and help^1, too./%", "obj_shop_ch5_slash_Create_0_gml_263_0");
            }
            else
            {
                scr_speaker("no_name");
                msgsetloc(0, "* Up until now^1, I don't think I realized what loneliness was./", "obj_shop_ch5_slash_Create_0_gml_267_0");
                msgnextloc("* Now^1, looking at the sunrise^1, I finally noticed it^1. That pang in my heart.../", "obj_shop_ch5_slash_Create_0_gml_268_0");
                msgnextloc("* ..^1. I'm going to make friends here^1. I know it^1. Lots and lots of friends.../%", "obj_shop_ch5_slash_Create_0_gml_269_0");
            }
            
            break;
        
        case UnknownEnum.Value_4:
            if (_times_talked == 0)
            {
                _times_talked++;
                scr_speaker("no_name");
                msgsetloc(0, "* I guess..^1. I'll be \"graduating\" from here soon./", "obj_shop_ch5_slash_Create_0_gml_278_0");
                msgnextloc("* I..^1. I'm not just ready to leave my friends behind yet.../", "obj_shop_ch5_slash_Create_0_gml_279_0");
                msgnextloc("* But^1, is that something..^1. anyone is ever ready for?/%", "obj_shop_ch5_slash_Create_0_gml_280_0");
            }
            else
            {
                scr_speaker("no_name");
                msgsetloc(0, "* If you \"seal the Fountain\"..^1. I won't stick around./", "obj_shop_ch5_slash_Create_0_gml_284_0");
                msgnextloc("* I'll..^1. need some time to myself^1, I think./", "obj_shop_ch5_slash_Create_0_gml_285_0");
                msgnextloc("* But^1, I'll be meeting you again./", "obj_shop_ch5_slash_Create_0_gml_286_0");
                msgnextloc("* And Ory^1, I'll be making sure Asgore is watering you properly^1, OK!?/%", "obj_shop_ch5_slash_Create_0_gml_287_0");
            }
            
            break;
        
        case UnknownEnum.Value_5:
            if (scr_flag_get(1711) == 0)
                scr_flag_set(1711, 1);
            
            _music_fade = true;
            _music_overlay = true;
            global.flag[20] = 0;
            
            with (_bg)
                _overlay_active = true;
            
            mus_volume(global.currentsong[1], 0, 1);
            scr_speaker("no_name");
            msgsetloc(0, "* (Suddenly^1, the shopkeeper's body took your hand^1, and talked in a low voice only you could hear...)/", "obj_shop_ch5_slash_Create_0_gml_313_0");
            msgnextloc("\\M1\\cp* Kris^1, is your hand okay? It looks like..^1. you've got a cat bite^1, mew.\\cW/", "obj_shop_ch5_slash_Create_0_gml_314_0");
            msgnextloc("\\cp* Cats can be nasty creatures^1, can't they^1, mew...?\\cW/", "obj_shop_ch5_slash_Create_0_gml_315_0");
            msgnextloc("\\cp* ..^1. I once met someone who REALLY liked cats^1, mew.\\cW/", "obj_shop_ch5_slash_Create_0_gml_316_0");
            msgnextloc("\\cp* They liked cats so much^1, they owned a whole hunting pack of them^1, mew!\\cW/", "obj_shop_ch5_slash_Create_0_gml_317_0");
            msgnextloc("\\cp* Of course^1, cats are fickle creatures^1, but they were very good at finding protein.\\cW/", "obj_shop_ch5_slash_Create_0_gml_318_0");
            msgnextloc("\\cp* Kris^1, if you have any protein^1, you must keep it hidden^1, and never let anyone see it.\\cW/", "obj_shop_ch5_slash_Create_0_gml_319_0");
            msgnextloc("\\cp* The cats are not too smart^1, but once they find a target^1, they never stop chasing it until they get bored.\\cW/", "obj_shop_ch5_slash_Create_0_gml_320_0");
            msgnextloc("\\cp* And when they find you^1, they bite..^1. very^1, VERY^1, hard.\\cW/", "obj_shop_ch5_slash_Create_0_gml_321_0");
            msgnextloc("\\cp* Some people would do anything to get away from them^1, even change their appearance^1, or go into hiding...\\cW/", "obj_shop_ch5_slash_Create_0_gml_322_0");
            msgnextloc("\\cp* Oh^1, Kris^1, it's terrible^1, mew. It's terrible...\\cW/", "obj_shop_ch5_slash_Create_0_gml_323_0");
            msgnextloc("\\M2\\cp* Please be careful^1, Kris..^1. promise...\\cW/", "obj_shop_ch5_slash_Create_0_gml_324_0");
            msgnextloc("\\M3* H..^1. huh? Wh..^1. why am I trembling? Was my body saying something...?/", "obj_shop_ch5_slash_Create_0_gml_325_0");
            msgnextloc("* Hey^1, don't have any conversations without me!^1! Communication is key^1, right^1, body^1! Body!?/%", "obj_shop_ch5_slash_Create_0_gml_326_0");
            break;
    }
    
    instance_create(30, 270, obj_writer);
};

enum UnknownEnum
{
    Value_0,
    Value_1,
    Value_2,
    Value_3,
    Value_4,
    Value_5
}
