/// IMPORT
draw_self();

function draw_text_outline(arg0, arg1, arg2, arg3, arg4, arg5)
{
    draw_set_font(arg4);
    draw_set_color(c_black);
    draw_text(arg0 + arg2, arg1 + arg2, arg3);
    draw_text(arg0 - arg2, arg1 - arg2, arg3);
    draw_text(arg0, arg1 + arg2, arg3);
    draw_text(arg0 + arg2, arg1, arg3);
    draw_text(arg0, arg1 - arg2, arg3);
    draw_text(arg0 - arg2, arg1, arg3);
    draw_text(arg0 - arg2, arg1 + arg2, arg3);
    draw_text(arg0 + arg2, arg1 - arg2, arg3);
    draw_set_color(arg5);
    draw_text(arg0, arg1, arg3);
}

draw_sprite_ext(spr_archipelago_logo, 0, x_align - 30, 25, 4, 4, 0, c_white, 1);
draw_sprite_ext(spr_archipelago_logo_text, 0, 140, 0, 1, 1, 0, c_white, 1);

for (var ii = 0; ii < 7; ii++)
{
    draw_set_font(fnt_mainbig);
    draw_set_color(c_white);
    var text = "";
    var i = 0;
    
    if (page == 0)
    {
        switch (ii)
        {
            case 0:
                text = "Host: " + string(global.AP_server);
                i = 0;
                break;
            
            case 1:
                text = "Port: " + string(global.AP_port);
                i = 1;
                break;
            
            case 2:
                text = "Slot Name: " + string(global.AP_name);
                i = 2;
                break;
            
            case 3:
                if (edit)
                    text = "Password: " + global.AP_password;
                else
                    text = "Password: " + string_repeat("*", string_length(global.AP_password));
                i = 3;
                break;
            
            case 4:
                text = "Connect to Multiworld";
                i = 5;
                break;
        }
    }
    else if (page == 1)
    {
        switch (ii)
        {            
            case 0:
                text = "Colors";
                i = 0;
                break;
            
            case 1:
                rectangle_color = rgb_to_bgr(hex_to_dec(global.AP_colors.filler));
                text = "Filler: #" + string(global.AP_colors.filler);
                i = 1;
                break;
            
            case 2:
                rectangle_color = rgb_to_bgr(hex_to_dec(global.AP_colors.progression));
                text = "Progression: #" + string(global.AP_colors.progression);
                i = 2;
                break;
            
            case 3:
                rectangle_color = rgb_to_bgr(hex_to_dec(global.AP_colors.useful));
                text = "Useful: #" + string(global.AP_colors.useful);
                i = 3;
                break;
            
            case 4:
                rectangle_color = rgb_to_bgr(hex_to_dec(global.AP_colors.trap));
                text = "Trap: #" + string(global.AP_colors.trap);
                i = 4;
                break;
            
            case 5:
                rectangle_color = rgb_to_bgr(hex_to_dec(global.AP_colors.useful_progression));
                text = "Prog/Useful: #" + string(global.AP_colors.useful_progression);
                i = 5;
                break;

            case 6:
                text = "Reset Colors"
                i = 6;
                break;
        }
        
        if (ii >= 1 && ii <= 5)
        {
            if (rectangle_color)
                draw_set_color(rectangle_color);
            
            draw_rectangle(x_align + 300, y_align + (gap * i), x_align + 325, y_align + (gap * i) + 25, false);
            draw_set_color(c_black);
            draw_rectangle(x_align + 300, y_align + (gap * i), x_align + 325, y_align + (gap * i) + 25, true);
        }
    }
    
    draw_text_outline(x_align, y_align + (gap * i), outline_offset, text, 4, 16777215);
    
    if (choice == ii)
    {
        draw_sprite_ext(spr_heart, 4, x_align / 1.5, y_align + (gap * i) + 8, 2, 2, 0, c_white, 1);
        
        if (edit)
            draw_set_color(c_yellow);
    }
    
    draw_text(x_align, y_align + (gap * i), text);
}

draw_set_color(c_white);

if (connect && page == 0)
{
    switch (global.AP_connection_state)
    {
        default:
            connected = "> Connecting...";
            break;

        case global.AP_ENUM_CONNECTION_STATE.ERROR_CREATING_SOCKET:
            draw_set_color(c_red);
            connected = "> Connection failed.\nCheck host and port" ;
            break;
        
        case global.AP_ENUM_CONNECTION_STATE.ERROR_CONNECTION_REFUSED:
            draw_set_color(c_red);
            connected = string("> Authentification failed.\n({0})", string(global.AP_connection_errors)) ;
            break;

        case global.AP_ENUM_CONNECTION_STATE.TRYING_TO_CONNECT:
            draw_set_color(c_yellow);
            connected = "> Trying to connect...";
            break;

        case global.AP_ENUM_CONNECTION_STATE.AWAITING_ARCHIPELAGO_RESPONSE:
            draw_set_color(c_yellow);
            connected = "> Awaiting Archipelago server response...";
            break;

        case global.AP_ENUM_CONNECTION_STATE.GOT_ROOMINFO:
            draw_set_color(c_yellow);
            connected = "> Sending authentification data...";
            break;

        case global.AP_ENUM_CONNECTION_STATE.CONNECTED:
            draw_set_color(c_green);
            connected = "> Connected to server!";
            break;
        
        case global.AP_ENUM_CONNECTION_STATE.WAITING_FOR_SCOUTING:
            draw_set_color(c_yellow);
            connected = "> Waiting for scouting data...";
            break;

        case global.AP_ENUM_CONNECTION_STATE.GOT_SCOUTING:
            draw_set_color(c_yellow);
            connected = "> Waiting for datapackage, it might take a while...";
            break;

        case global.AP_ENUM_CONNECTION_STATE.GOT_DATA_PACKAGE:
            draw_set_color(c_yellow);
            connected = "> Parsing scouting data...";
            break;

        case global.AP_ENUM_CONNECTION_STATE.READY:
            audio_destroy_stream(my_music);
            room_goto(PLACE_CHAPTER_SELECT_2x);
            break;
    }
    
    draw_text(x_align, 340, connected);
    draw_set_color(c_white);
}

draw_set_font(fnt_main);
draw_text_outline(10, room_height - 30, 1, "[LEFT] or [RIGHT] to change page", 2, 16777215);
draw_set_halign(fa_right);
var aa = room_width - 15;
var bb = room_height - (array_length(credits) * 17);
var gap_credits = 15;

for (var i = 0; i < array_length(credits); i++)
    draw_text_outline(aa, bb + (gap_credits * i), 1, credits[i], 2, 16777215);

draw_set_halign(fa_left);
