/// PATCH

/// REPLACE
                global.msg[0] = stringsetloc("\\E0What do&you like&to buy?", "obj_shop1_slash_Draw_0_gml_148_0");
/// CODE
                global.msg[0] = stringsetloc("\\E0No more&checks,&sorry.", "obj_shop1_slash_Draw_0_gml_148_0");
/// END

/// REPLACE
                        msgnextloc("\\E1* Me? I'll just be here offering the same old junk./", "obj_shop1_slash_Draw_0_gml_573_0");
/// CODE
                        msgnextloc("\\E1* Me? I'll just be here offering this old junk, in case your checks don't bring any luck.//", "obj_shop1_slash_Draw_0_gml_573_0");
/// END

/// REPLACE
                        msgnextloc("\\E1* Me? I'll just be here offering the same old junk./", "obj_shop1_slash_Draw_0_gml_573_0");
/// CODE
                        msgnextloc("\\E1* Me? I'll just be here offering this old junk, in case your checks don't bring any luck./", "obj_shop1_slash_Draw_0_gml_573_0");
/// END