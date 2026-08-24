/// PATCH

/// AFTER
        scr_armorinfo(global.chararmor1[i]);
/// CODE
        chararmor1element[i] = armorelementtemp;
        chararmor1elementamount[i] = armorelementamounttemp;
        global.itemelement[i][1] = armorelementtemp;
        global.itemelementamount[i][1] = armorelementamounttemp;
/// END

/// AFTER
        scr_armorinfo(global.chararmor2[i]);
/// CODE
        chararmor2element[i] = armorelementtemp;
        chararmor2elementamount[i] = armorelementamounttemp;
        global.itemelement[i][2] = armorelementtemp;
        global.itemelementamount[i][2] = armorelementamounttemp;
/// END