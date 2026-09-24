/// IMPORT
function scr_weaponcheck_inventory_and_equiped_party(arg0)
{
    var _haveeither = 0;
    var itemcounttotal = 0;
    scr_weaponcheck_inventory(arg0);
    
    if (haveit == 1)
        _haveeither = 1;
    
    itemcounttotal += itemcount;
    scr_weaponcheck_equipped_party(arg0);
    
    if (__totalwearing >= 1)
        _haveeither = 1;
    
    itemcounttotal += __totalwearing;
    haveit = _haveeither;
    itemcount = itemcounttotal;
    return haveit;
}
