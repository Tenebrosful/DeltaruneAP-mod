/// IMPORT
function scr_shop_fcastle_items()
{
    var item_list = [];
    item_list = [new vending_item(37, "item", 60), new vending_item(38, "item", 120), new vending_item(39, "armor", 60), new vending_item(40, "armor", 111)];
    var secret_unlocked = (global.customflags[1311] + global.customflags[1312] + global.customflags[1313] + global.customflags[1314]) >= 4;
    
    if (secret_unlocked)
    {
        if (global.customflags[1330] == 0)
            item_list = [new vending_item(56, "check", 30)];
        else
            item_list = [new vending_item(37, "item", 60), new vending_item(38, "item", 120), new vending_item(39, "armor", 60), new vending_item(40, "armor", 111)];
    }
    
    return item_list;
}
