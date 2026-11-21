/// PATCH .ignore if CHAPTER_1

/// REPLACE
        if (command_arg1[i] == "init")
            global.currentsong[0] = snd_init(command_arg2[i]);
        
        if (command_arg1[i] == "initplay")
            mus_initplay(command_arg2[i]);
        
        if (command_arg1[i] == "initloop")
            mus_initloop(command_arg2[i]);
/// CODE
        if (command_arg1[i] == "init")
            global.currentsong[0] = snd_init(command_arg2[i], !command_arg3[i]);
        
        if (command_arg1[i] == "initplay")
            mus_initplay(command_arg2[i], !command_arg3[i]);
        
        if (command_arg1[i] == "initloop")
            mus_initloop(command_arg2[i], !command_arg3[i]);
/// END