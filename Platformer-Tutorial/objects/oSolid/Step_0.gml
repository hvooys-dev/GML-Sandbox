if (place_meeting(x,y-0.1,oPlayer))
{
	room_restart()
} 

if (place_meeting(x,y-0.1,oSolid)) 
{
	vspeed = 0 
	gravity = 0
}