/// PATCH

/// APPEND
if (room == room_dw_cyber_post_music_boss_slide){
    var upperpart = (280 <= x && x <= 480) && (2360 <= y && y <= 2440)
    var downpart = (360 <= x && x <= 400) && (2480 <= y && y <= 2520)
    
    if (upperpart || downpart)
        instance_destroy();
}
/// END