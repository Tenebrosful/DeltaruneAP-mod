/// IMPORT
function AP_toast_notification(_item_name, _item_color, _player, _sending) constructor
{
    static Tick = function()
    {
        framed_ticked++;
    };
    
    static ShouldBeGone = function()
    {
        return framed_ticked > 30 * 5;
    };
    
    static GetText = function()
    {
        if (special)
        {
            switch (global.chapter)
            {
                case 4:
                    return string("Old Man received their {0}", item_name);
                
                default:
                    break;
            }
        }
        
        if (sending)
            return string("You sent {1} to {0}", player, item_name);
        else
            return string("You received {1} from {0}", player, item_name);
    };
    
    item_name = _item_name;
    item_color = _item_color;
    player = _player;
    sending = _sending;
    special = sending == "special";
    framed_ticked = 0;
}