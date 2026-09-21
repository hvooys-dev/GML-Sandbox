ysp += 0.1
xsp = 0

if keyboard_check(vk_left)
{
	xsp = -1 
}

if keyboard_check(vk_right)
{
	xsp = +1
}

if (place_meeting(x, y+1, oSolid))
{
	ysp = 0
	if keyboard_check(vk_up)
	{
		ysp = -2 
	}
}

move_and_collide(xsp, ysp, oSolid)

if (place_meeting(x, y, oFlag)) 
{
	room_goto_next();
}

if (place_meeting(x,y, oSpike))
{
	room_restart();
}

// Floor object falls when touched by player
if (room == Room003_DoNotFall) 
{
	nearest_oSolid = instance_nearest(x,y + 1, oSolid)
	if (instance_exists(nearest_oSolid) and place_meeting(x,y+1,nearest_oSolid) and nearest_oSolid != inst_750EE37B2)
	{
		nearest_oSolid.gravity = 0.1
		nearest_oSolid.gravity_direction = 270
	}
}

// Solid objects fall when player walks under them
if (room == Room004_NoSquish) 
{	
	oSolid_above = instance_nearest(x,y-70, oSolid)
	
	if (instance_exists(oSolid_above) and y > oSolid_above.y and x == oSolid_above.x) 
	{
		oSolid_above.gravity = 0.2
		oSolid_above.gravity_direction = 270
		
		//if (place_meeting(x,y,oSolid_above))
		//{
		//	room_restart()
		//}
	}
	
	
}
