// Set the vertical position of the player
y_sp += 0.1

// Set the horizontal position of the player
x_sp = 0

// Movement using arrow keys
if keyboard_check(vk_left)
{
	x_sp = -1 
}

if keyboard_check(vk_right)
{
	x_sp = +1
}

// Jump
if (place_meeting(x, y+1, obj_solid))
{
	y_sp = 0
	if keyboard_check(vk_up)
	{
		y_sp = -2 
	}
}

// Platform objects will stop player movement
move_and_collide(x_sp, y_sp, obj_solid)


// Move to next room when play reaches flag
if (place_meeting(x, y, obj_flag)) 
{
	room_goto_next();
}

// Room restarts when player and spike objects meet
if (place_meeting(x,y, obj_spike))
{
	room_restart();
}
