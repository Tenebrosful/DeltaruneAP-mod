/// IMPORT
function mus_initloop(arg0, arg1 = true)
{
    global.currentsong[0] = snd_init(arg0, arg1);
    global.currentsong[1] = mus_loop(global.currentsong[0]);
}