/// PATCH

/// REPLACE
    sprite_index = spr_swanboat;
    image_speed = 0.1;
/// CODE
    if (variable_global_exists("fastswanequiped") && global.fastswanequiped)
    {
        sprite_index = spr_swanboat_fast;
        image_speed = 0.5;
    }
    else
    {
      sprite_index = spr_swanboat;
      image_speed = 0.1;
    }
/// END

/// REPLACE
        sprite_index = spr_swanboat_squish;
/// CODE
        {
          if (global.fastswan)
              sprite_index = spr_swanboat_squish_fast;
          else
              sprite_index = spr_swanboat_squish; 
        }
/// END