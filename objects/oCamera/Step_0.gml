/*if(!instance_exists(oPlayer)) exit;

var targetX = oPlayer.x; 
var targetY = oPlayer.y;

x = lerp(x, targetX, 0.1);
y = lerp(y, targetY, 0.1);

if(x < width * 0.5) x = width * 0.5;
else if(x > room_width - width * 0.5){
	x = room_width - width * 0.5;
}
if(y < height * 0.5) y = height * 0.5;
else if(y > room_height - height * 0.5){
	y = room_height - height * 0.5;
}

camera_set_view_pos(view_camera[0],  x - width * 0.5, y - height * 0.5);*/



//if player leaves the view on the right
if (oPlayer.x > camera_get_view_x(view_camera[0]) + 240)
{
	oPlayer.PlayerControl = false
	targetSlideX = R_X + 240
	PlayerMove = oPlayer.x + 12
	oMiniMap.MapWalkThrogh[ targetSlideX/240 , y/160 ] = 1
	slideFlagX = true
}
//if player leaves the view on the left
if (oPlayer.x < camera_get_view_x(view_camera[0]))
{
	oPlayer.PlayerControl = false
	targetSlideX = R_X - 240
	PlayerMove = oPlayer.x - 12
	oMiniMap.MapWalkThrogh[ targetSlideX/240 , y/160 ] = 1
	slideFlagX = true
}

if(slideFlagX){
	if( R_X == targetSlideX ){
		oPlayer.PlayerControl = true
		slideFlagX = false
		R_X = targetSlideX
	}
	oPlayer.x = approach(oPlayer.x , PlayerMove, 0.25)
	R_X = approach(R_X, targetSlideX, transitionSpeed)
	camera_set_view_pos(view_camera[0], R_X , R_Y)
	//show_debug_message(R_X)
}

//if player leaves the view on the bottom
if (oPlayer.y > camera_get_view_y(view_camera[0]) +160 )
{
	oPlayer.PlayerControl = false
	targetSlideY = R_Y + 160
	PlayerMove = oPlayer.y + 18
	oMiniMap.MapWalkThrogh[ x/240 , targetSlideY/160 ] = 1
	slideFlagY = true
}
//if player leaves the view on the top
if (oPlayer.y < camera_get_view_y(view_camera[0]) + 10  )
{
	oPlayer.PlayerControl = false
	targetSlideY = R_Y - 160
	PlayerMove = oPlayer.y - 14
	oMiniMap.MapWalkThrogh[ x/240 , targetSlideY/160 ] = 1
	slideFlagY = true
}
if(slideFlagY){
	if( R_Y == targetSlideY ){
		oPlayer.PlayerControl = true
		slideFlagY = false
		R_Y = targetSlideY
	}
	oPlayer.y = approach(oPlayer.y , PlayerMove, 0.5)
	R_Y = approach(R_Y, targetSlideY, transitionSpeed)
	camera_set_view_pos(view_camera[0], R_X , R_Y)
	//show_debug_message(R_Y)
}
systemFollowPlayer();
//camera_set_view_pos(view_camera[0], R_X, R_Y);
//show_debug_message(R_X)