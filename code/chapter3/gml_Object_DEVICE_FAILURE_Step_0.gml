/// PATCH

/// BEFORE
    if (knight_mode_con == 0)
    {
        knight_mode_con = 1;
        global.msg[0] = stringsetloc("\\M0     VERY^6& &  INTERESTING./%", "DEVICE_FAILURE_slash_Step_0_gml_290_0");
        var _writer = instance_create(70, 80, obj_writer);
    }
/// CODE
    if ((knight_mode_con == 0 || knight_mode_con == 20 || knight_mode_con == 40) && global.AP_secret_bosses_mandatory)
        knight_mode_con += 100;
    
    if (knight_mode_con == 100)
    {
        knight_mode_con = 101;
        global.msg[0] = stringsetloc("\\M0     VERY^6& &  INTERESTING./%", "DEVICE_FAILURE_slash_Step_0_gml_290_0");
        var _writer = instance_create(70, 80, obj_writer);
    }
    
    if (knight_mode_con == 101 && !i_ex(obj_writer))
    {
        knight_mode_con = 102;
        scr_delay_var("knight_mode_con", 103, 30);
        global.msg[0] = stringsetloc("\\M0 YOUR LOSS HERE^6& &     IS ALL^6& & BUT GUARANTEED./%", "DEVICE_FAILURE_slash_Step_0_gml_300_0");
        var _writer = instance_create(70, 80, obj_writer);
    }
    
    if (knight_mode_con == 103 && !i_ex(obj_writer))
    {
        knight_mode_con = 104;
        scr_delay_var("knight_mode_con", 105, 30);
        global.msg[0] = stringsetloc("\\M0      BUT^6& &THE CHOICE TO YIELD^6& &CANNOT BE REACHED./%", "DEVICE_FAILURE_slash_Step_0_gml_310_0");
        var _writer = instance_create(70, 80, obj_writer);
    }
    
    if (knight_mode_con == 105 && !i_ex(obj_writer))
    {
        knight_mode_con = 106;
        scr_delay_var("knight_mode_con", 107, 30);
        global.msg[0] = stringsetloc("\\M0   IF THE ONLY&ESCAPE IS VICTORY/%", "DEVICE_FAILURE_slash_Step_0_gml_320_0");
        var _writer = instance_create(70, 80, obj_writer);
    }
    
    if (knight_mode_con == 107 && !i_ex(obj_writer))
    {
        knight_mode_con = 108;
        scr_delay_var("knight_mode_con", 50, 30);
        global.msg[0] = stringsetloc("\\M0      THEN^6& &SHALL WE HASTEN?/%", "DEVICE_FAILURE_slash_Step_0_gml_330_0");
        var _writer = instance_create(70, 80, obj_writer);
    }

        if (knight_mode_con == 120)
    {
        knight_mode_con = 121;
        global.msg[0] = stringsetloc("\\M0  AND SO, YOU&  MEET WITH THE &  SAME FATE./%", "DEVICE_FAILURE_slash_Step_0_gml_341_0");
        var _writer = instance_create(70, 80, obj_writer);
    }
    
    if (knight_mode_con == 121 && !i_ex(obj_writer))
    {
        knight_mode_con = 50;
        global.msg[0] = stringsetloc("\\M0  LET US NOT&  WASTE TIME./%", "DEVICE_FAILURE_slash_Step_0_gml_350_0");
        var _writer = instance_create(70, 80, obj_writer);
    }

        if (knight_mode_con == 140 && !i_ex(obj_writer))
    {
        knight_mode_con = 141;
        global.msg[0] = stringsetloc("\\M0     VERY^6& &  INTERESTING./%", "DEVICE_FAILURE_slash_Step_0_gml_400_0");
        var _writer = instance_create(70, 80, obj_writer);
    }
    
    if (knight_mode_con == 141 && !i_ex(obj_writer))
    {
        knight_mode_con = 142;
        global.msg[0] = stringsetloc("\\M0  YOU ARE MISSING&  SOMETHING&  IMPORTANT./%", "DEVICE_FAILURE_slash_Step_0_gml_409_0");
        var _writer = instance_create(70, 80, obj_writer);
    }
    
    if (knight_mode_con == 142 && !i_ex(obj_writer))
    {
        knight_mode_con = 143;
        global.msg[0] = stringsetloc("\\M0  YOU WON'T WIN&  LIKE THIS./%", "DEVICE_FAILURE_slash_Step_0_gml_418_0");
        var _writer = instance_create(70, 80, obj_writer);
    }
    
    if (knight_mode_con == 143 && !i_ex(obj_writer))
    {
        knight_mode_con = 50;
        global.msg[0] = stringsetloc("\\M0  STILL...&  YOU MUST&  PERSIST./%", "DEVICE_FAILURE_slash_Step_0_gml_427_0");
        var _writer = instance_create(70, 80, obj_writer);
    }
/// END

/// REPLACE
if (knight_mode_con == 50 && !i_ex(obj_writer))
    {
        knight_mode_con = 51;
        scr_delay_var("knight_mode_con", 52, 30);
        scr_lerp_var_instance(heart_marker, "image_alpha", 1, 0, 15);
        var _choice = instance_create(100, 120, DEVICE_CHOICE);
        
        with (_choice)
        {
            NAME[0][0] = string_hash_to_newline(stringsetloc("GO BACK#(FIGHT AGAIN)", "DEVICE_FAILURE_slash_Step_0_gml_406_0"));
            NAME[1][0] = string_hash_to_newline(stringsetloc("GO FORWARD#(MOVE ON)", "DEVICE_FAILURE_slash_Step_0_gml_407_0"));
            NAMEX[0][0] = 70;
            NAMEX[1][0] = 190;
            NAMEY[0][0] = 180;
            NAMEY[1][0] = 180;
            XMAX = 1;
            CURX = -1;
            IDEALX = 190;
            IDEALY = 180;
            fadebuffer = 20;
            scr_lerpvar("choice_y_offset", 20, 0, 20);
        }
    }
/// CODE
if (knight_mode_con == 50 && !i_ex(obj_writer))
    {
      if (global.AP_secret_bosses_mandatory)
      {
          knight_mode_con = 53;
      }
      else
      {
          knight_mode_con = 51;
          scr_delay_var("knight_mode_con", 52, 30);
          scr_lerp_var_instance(heart_marker, "image_alpha", 1, 0, 15);
          var _choice = instance_create(100, 120, DEVICE_CHOICE);
          
          with (_choice)
          {
              NAME[0][0] = string_hash_to_newline(stringsetloc("GO BACK#(FIGHT AGAIN)", "DEVICE_FAILURE_slash_Step_0_gml_406_0"));
              NAME[1][0] = string_hash_to_newline(stringsetloc("GO FORWARD#(MOVE ON)", "DEVICE_FAILURE_slash_Step_0_gml_407_0"));
              NAMEX[0][0] = 70;
              NAMEX[1][0] = 190;
              NAMEY[0][0] = 180;
              NAMEY[1][0] = 180;
              XMAX = 1;
              CURX = -1;
              IDEALX = 190;
              IDEALY = 180;
              fadebuffer = 20;
              scr_lerpvar("choice_y_offset", 20, 0, 20);
          }
      }
  }
/// END