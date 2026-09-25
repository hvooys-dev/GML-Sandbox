// Room specific events
if (room == Room003_DoNotFall)
{
	// Object starts falling if it is between two horizontal values at the same vertical value once the player passes the instance	
	if ( x > x_fall_start and x < x_fall_end and y == y_fall) 
	{
		if (obj_player.x > x)
		{
			motion_set(270, 0.5)
		}
	}
}