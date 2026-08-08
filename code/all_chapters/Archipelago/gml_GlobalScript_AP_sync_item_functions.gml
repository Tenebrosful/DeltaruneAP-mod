/// FUNCTIONS
function AP_sync_item_from_server()
{
    server_size = array_length(global.AP_item_from_server)
    save_size = array_length(global.AP_item_got_in_current_chapter)

    item_to_sync = server_size - save_size

    for (var i = save_size; i < server_size; i++)
    {
        global.AP_item_got_in_current_chapter[i] = global.AP_item_from_server[i];
        AP_handle_receive_item(global.AP_item_from_server[i]);
    }

    if (global.AP_is_first_sync)
    {
        global.AP_is_first_sync = false;
    }
}

function AP_verify_sync()
{
    if (global.AP_is_receiving_items)
    {
        return true; // prevent to happen if we are receiving items
    }

    if (!variable_global_exists("AP_item_got_in_current_chapter"))
    {
        return true; // prevent when not in a save
    }

    // Copy the arrays to prevent async modifications
    var AP_item_from_server_copy = global.AP_item_from_server
    var AP_item_got_in_current_chapter_copy = global.AP_item_got_in_current_chapter

    server_size = array_length(AP_item_from_server_copy)
    save_size = array_length(AP_item_got_in_current_chapter_copy)

    if (array_length(AP_item_from_server_copy) != array_length(AP_item_got_in_current_chapter_copy))
    {
        return false;
    }

    for (i = 0; i < server_size; i++)
    {
        if (AP_item_from_server_copy[i] != AP_item_got_in_current_chapter_copy[i])
            return false;
    }

    return true;
}