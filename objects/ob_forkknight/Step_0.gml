 
 if image_xscale = 1
 {
	 xspd = 1
 }
 else
 {
	 xspd = -1
 }
 hurtbox.image_xscale = image_xscale
 hurtbox.x = x 
 hurtbox.y = y
yspd = yspd + grav
if place_meeting(x+xspd, y, ob_wall)

{
	while (!place_meeting(x + sign(xspd), y, ob_wall))
	{
		x = x + sign(xspd)
	}
	if image_xscale == 1
		image_xscale = - 1
	else
		image_xscale = 1
	xspd = 0;
	
}
x = x + xspd

if place_meeting(x, y+yspd, ob_wall)
{
	while (!place_meeting(x, y + sign(yspd), ob_wall))
	{
		y = y + sign(yspd)
	}
	yspd = 0;
	onFloor = 1
}
y = y + yspd
 if place_meeting(x, y+1, ob_wall)
 {
	 onFloor= 0
 }

 if hp <= 0 
	instance_destroy()