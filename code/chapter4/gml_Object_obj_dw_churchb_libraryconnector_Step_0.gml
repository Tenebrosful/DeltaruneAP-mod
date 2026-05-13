/// PATCH

/// AFTER
    prophecy3.extflag = "rudebuster";
    roomglow = instance_create(0, 0, obj_roomglow);
    var makeglow = [];
/// CODE
    prophecy4 = instance_create(720, 1540, obj_dw_church_prophecy);
    var gen = scr_genmarker("prop4");
    setxy(gen.x + 150, gen.y + 90, prophecy4);
    prophecy4.extflag = "ap";
/// END