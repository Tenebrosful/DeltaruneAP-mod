/// IMPORT

image_alpha += fadespeed;
draw_set_alpha(image_alpha);
draw_rectangle_color(x, y, length, height, image_blend, image_blend, image_blend, image_blend, false);
draw_set_alpha(temp_alpha);

if (image_alpha <= 0)
    instance_destroy();
