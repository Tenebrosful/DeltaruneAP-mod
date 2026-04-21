/// PATCH

/// APPEND

if (room == room_dw_cyber_battle_maze_1 && x == 840 && y == 200)
{
    if (global.customflags[36] == 1 && !d_ex())
    {
        with (mywall)
            instance_destroy();
        
        instance_destroy();
    }
}
/// END