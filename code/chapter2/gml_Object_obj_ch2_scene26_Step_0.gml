/// PATCH

/// REPLACE

if (make_npc_b)
{
    make_npc_b = false;
    scr_losechar();
/// CODE
if (con == 33 && scr_sideb_get_phase() >= 2 && !d_ex())
{
    con = 32;
    global.interact = 1;
    cutscene_master = scr_cutscene_make();
    scr_maincharacters_actors();
    ra = 2;
    ra_actor = instance_create(ralsei_npc.x, ralsei_npc.y, obj_actor);
    ra_actor.sprite_index = ralsei_npc.sprite_index;
    scr_actor_setup(ra, ra_actor, "ralsei");
    instance_destroy(ralsei_npc);
    qu = 3;
    qu_actor = instance_create(queen_npc.x, queen_npc.y, obj_actor);
    qu_actor.sprite_index = queen_npc.sprite_index;
    scr_actor_setup(qu, qu_actor, "queen");
    scr_getchar(3);
    instance_destroy(queen_npc);
    c_sel(ra);
    c_facing("l");
    c_walkdirect_wait(ra_actor.x - 60, ra_actor.y, 10);
    c_facing("u");
    c_sel(qu);
    c_facing("l");
    c_sel(ra);
    c_walkdirect_wait(ra_actor.x - 60, ra_actor.y - 40, 10);
    c_facing("r");
    c_wait(1);
    c_var_instance(id, "make_npc_b", true);
    c_wait(30);
    c_pannable(0);
    c_actortokris();
    c_terminatekillactors();
}

if (make_npc_b)
{
    make_npc_b = false;
    scr_losechar();
    
    if (!i_ex(queen_npc))
        queen_npc = instance_create(qu_actor.x, qu_actor.y, obj_npc_sign);
/// END