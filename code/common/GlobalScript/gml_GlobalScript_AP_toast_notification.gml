/// IMPORT
function AP_toast_notification(_item_name, _item_color, _player, _sending) constructor{
	item_name = _item_name
	item_color = _item_color
	player = _player
	sending = _sending
	
	framed_ticked = 0
	
	static Tick = function()
	{
		framed_ticked++;
	}
	
	static ShouldBeGone = function()
	{
		return framed_ticked > 30 * 5
	}
	
	static GetText = function()
	{
    if (sending)
    {
      return string("You send {1} to {0}", player, item_name)
    }
    else
    {
		  return string("You received {1} from {0}", player, item_name)
    }
	}
}