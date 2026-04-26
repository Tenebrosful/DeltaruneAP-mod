/// IMPORT
posx = camera_get_view_x(view_camera[0]) + (camera_get_view_width(view_camera[0]) / 2);

var source = "";
var cause = "";

if (global.AP_deathlink_infos.source != undefined)
    source = global.AP_deathlink_infos.source;
else
    source = "Yourself";

if (global.AP_deathlink_infos.cause != undefined)
    cause = global.AP_deathlink_infos.cause;
else if (source == "Yourself")
    cause = "You died yourself!";
else
    cause = "an unknown cause";

draw_set_halign(fa_center);
draw_set_color(c_red);
draw_text(posx, 20, "Deathlink from " + source);
draw_set_color(c_white);
draw_text(posx, 40, cause);
draw_set_halign(fa_left);
