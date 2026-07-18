/// PATCH

/// APPEND
// Emergency anti-softlock
if (con == 60 && global.menuno < 1 && !i_ex(obj_writer))
  global.interact = 0
/// END
