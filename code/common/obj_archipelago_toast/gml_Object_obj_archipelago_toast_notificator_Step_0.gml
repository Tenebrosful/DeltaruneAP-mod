/// IMPORT
indexesToRemove = []

for (i = 0; i < array_length(current_notification); i++)
{
	toast = current_notification[i]
	toast.Tick()
	
	if toast.ShouldBeGone()
	{
		array_push(indexesToRemove, i)
	}
}

for (i = 0; i < array_length(indexesToRemove); i++)
{
	array_delete(current_notification, indexesToRemove[i], 1)
}

if (keyboard_check_pressed(vk_backspace))
{
  array_push(current_notification, new AP_toast_notification("Test Item", c_red, "Player1", true))
}