/// IMPORT
current_line = 0;
_vw = camerawidth();
_cx = camerax();
_cy = cameray();
draw_set_halign(fa_right);
draw_set_font(fnt_main);

for (i = 0; i < array_length(current_notification); i++)
{
    draw_set_color(c_white);
    toast = current_notification[i];
    top_gap = 5 + (30 * current_line) + (5 * current_line);
    text = toast.GetText();
    txt_width = string_width(text);
    sprite_w = 25;
    right_gap = 10;
    draw_set_alpha(0.5);
    draw_set_color(toast.item_color);
    draw_rectangle((_cx + _vw) - txt_width - sprite_w - right_gap - 20, _cy + top_gap, _cx + _vw, _cy + top_gap + 30, false);
    draw_set_color(toast.item_color);
    draw_set_alpha(1);
    draw_sprite_stretched(spr_archipelago, 1, (_cx + _vw) - sprite_w - right_gap, _cy + top_gap + 5, sprite_w, sprite_w);
    draw_text_shadow((_cx + _vw) - sprite_w - right_gap - 10, _cy + top_gap + 8, text);
    current_line++;
}

draw_set_halign(fa_left);
