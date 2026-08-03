/// IMPORT
if (con < 0)
    exit;

if (_bromide_sprite == -4)
    exit;

if (global.darkzone == 0)
    draw_sprite_ext(_bromide_sprite, 0, camerax(), _bromide_y, 0.5, 0.5, 0, c_white, 1);
else
    draw_sprite_ext(_bromide_sprite, 0, camerax(), _bromide_y, 1, 1, 0, c_white, 1);

if (_bromide_sprite == 6188 && global.lang == "ja")
    draw_sprite(spr_bromide_r_tag, 0, camerax() + 263, _bromide_y + 791);
