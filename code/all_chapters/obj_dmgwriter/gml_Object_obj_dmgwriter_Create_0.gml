/// IMPORT
mercytimer = 0;
spec = 0;
delaytimer = 0;
delay = 2;
active = 0;
hdir = 1;
damage = round(random(600));
bounces = 0;
type = -1;
stretch = 0.2;
stretchgo = 1;
lightf = merge_color(c_purple, c_white, 0.6);
lightb = merge_color(c_aqua, c_white, 0.5);
lightg = merge_color(c_lime, c_white, 0.5);
lighty = merge_color(c_yellow, c_white, 0.3);
aqcolor = merge_color(c_aqua, c_blue, 0.3);
dkgreen = merge_color(c_green, c_black, 0.05);
init = 0;
showzeroes = false;
nohbounce = false;
mercytimer = 0;
kill = 0;
killtimer = 0;
killactive = 0;
killamount = 1;
killspeed = 1;
noextend = false;

with (obj_dmgwriter)
{
    if (type != 3 && !noextend)
        killtimer = 0;
}

snapback = true;
reverse = false;
slidespeedx = 0;
specialmessage = 0;
stayincamera = 1;
xx = camerax();
typeb = 0;
creatorid = -1;
message_sprite = scr_84_get_sprite("spr_battlemsg");
