/// IMPORT

function mus_get_name(arg0 = undefined)
{
    if (arg0 == undefined)
        arg0 = global.currentsong[0];
    
    with (obj_astream)
    {
        if (mystream == arg0)
            return songname;
    }
    
    return "";
}
