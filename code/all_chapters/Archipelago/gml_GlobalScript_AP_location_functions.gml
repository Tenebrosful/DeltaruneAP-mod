/// FUNCTIONS
function AP_complete_chapter(chapter_number)
{
    if (!instance_exists(obj_archipelago_client))
    {
        instance_create(0, 0, obj_archipelago_client);
    }
    
    if(obj_archipelago_client.AP_isDisconnected())
        obj_archipelago_client.AP_connect();

    switch (chapter_number)
    {
        case 0:
            break;
        case 1:
            AP_sendLocation(185);
            break;
        case 2:
            if (global.AP_current_route == global.AP_ENUM_CHOSEN_ROUTE.WEIRD_ROUTE)
                AP_sendLocation(351);
            else
                AP_sendLocation(186);
            break;
        case 3:
            AP_sendLocation(187);
            break;
        case 4:
            AP_sendLocation(225);
            break;
        case 5:
            if (global.AP_current_route == global.AP_ENUM_CHOSEN_ROUTE.WEIRD_ROUTE)
                AP_sendLocation(350);
            else
                AP_sendLocation(345);
            break;
        default:
            break;
    }
    
    obj_archipelago_client.AP_completeChapter(chapter_number);
}

function AP_get_location_reward_text(location_id)
{
    if (!variable_global_exists("AP_location_item")) return "Unknown Item";
    if !variable_struct_exists(global.AP_location_item, location_id) return "Unknown Item";

    var data = variable_struct_get(global.AP_location_item, location_id);

    if (data.playerName == "Yourself" || data.playerName == "<yourself>")
        var text = string("your {0}", data.itemName);
    else
        var text = string("{0}'s {1}", data.playerName, data.itemName);
    return AP_item_classification_color_text(text, data.flags);
}

function AP_get_location_reward_data(location_id)
{
     if (!variable_global_exists("AP_location_item")) return {playerName: "Unknown", itemName: "Unknown", flags: 000}
    if !variable_struct_exists(global.AP_location_item, location_id) return {playerName: "Unknown", itemName: "Unknown", flags: 000}
    var data = variable_struct_get(global.AP_location_item, location_id)
    if data.playerName == "<yourself>" data.playerName = "Yourself"
    return variable_struct_get(global.AP_location_item, location_id)
}

function AP_item_classification_color_text(text, flags)
{
    switch (flags)
    {
        case 0: 
            return string("\\cf{0}\\c0^2", text);
        case 1: 
            return string("\\cv{0}\\c0^2", text);
        case 2:
            return string("\\cu{0}\\c0^2", text);
        case 3:
            return string("\\cg{0}\\c0^2", text);
        case 4:
            return string("\\ct{0}\\c0^2", text);
        default : 
            return string("\\c0{0}\\c0^2", text);
    }
}

function AP_item_classification_color_shop(flags)
{
    return draw_set_color(AP_item_flag_to_color(flags))
}

function AP_item_flag_to_color(flags)
{
    switch (flags)
    {
        case 0:
            return rgb_to_bgr(hex_to_dec(global.AP_colors.filler))
        case 1:
            return rgb_to_bgr(hex_to_dec(global.AP_colors.progression))
        case 2:
            return rgb_to_bgr(hex_to_dec(global.AP_colors.useful))
        case 3:
            return rgb_to_bgr(hex_to_dec(global.AP_colors.useful_progression))
        case 4:
            return rgb_to_bgr(hex_to_dec(global.AP_colors.trap))
        default:
            return c_white
    }
}

function AP_sendLocation(location_id)
{
    noroom = 0;
    obj_archipelago_client.AP_sendLocation(location_id);
}

function AP_sendHint(location_id)
{
    noroom = 0;
    obj_archipelago_client.AP_sendHint(location_id);
}

function AP_handle_mike_minigame_trophy(minigame, highscore)
{
    var location_to_send = [];
    var minigame_base_id = 0;
    var trophy = 0;
    switch(minigame)
    {
        case 1:
            minigame_base_id = 232;
            if (highscore >= 1000)
                array_push(location_to_send, minigame_base_id + 0)
            if (highscore >= 4000)
                array_push(location_to_send, minigame_base_id + 1)
            if (highscore >= 8000)
                array_push(location_to_send, minigame_base_id + 2)
            if (highscore >= 16000)
                array_push(location_to_send, minigame_base_id + 3)
            break;
        case 2:
            minigame_base_id = 236;
            if (highscore >= 500)
                array_push(location_to_send, minigame_base_id + 0)
            if (highscore >= 1200)
                array_push(location_to_send, minigame_base_id + 1)
            if (highscore >= 2000)
                array_push(location_to_send, minigame_base_id + 2)
            if (highscore >= 3000)
                array_push(location_to_send, minigame_base_id + 3)
            break;
        case 3:
            minigame_base_id = 240;
            if (highscore >= 100)
                array_push(location_to_send, minigame_base_id + 0)
            if (highscore >= 300)
                array_push(location_to_send, minigame_base_id + 1)
            if (highscore >= 500)
                array_push(location_to_send, minigame_base_id + 2)
            if (highscore >= 700)
                array_push(location_to_send, minigame_base_id + 3)
            break;
    }

    AP_sendLocation(location_to_send);

}