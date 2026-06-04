/// PATCH

/// APPEND
// Emergency anti-softlock
if (con == 60 && !i_ex(obj_writer))
  global.interact = 0
/// END