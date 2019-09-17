transitionAlpha = 0;
doTransition = false;
targetRoom = noone;
deathFade = false;

width = display_get_gui_width();
height = display_get_gui_height();

//開頭直接先把整個地圖的wall copy下來
//MiniMapStorage[ y * len(x) + x (地圖分格子後編號4*4就0~15之類) , 該格子內有幾個wall
WallFlag = false
with(oWall){
	cameraWidth = 240
	cameraHeight = 160
	//判定此牆壁在哪一格
	var array_X = ( x - (x % cameraWidth) ) / cameraWidth
	var array_Y = ( y - (y % cameraHeight) ) / cameraHeight
	
	//大小
	var Wallscale = camera_get_view_height(view_camera[0])/32

	//此格子內的第幾號牆壁 假設陣列內有5個了 那len抓出來的int就會是5 剛好下一個加在陣列第5個
	if(!oGame.WallFlag){
		count = 0
		oGame.WallFlag = true
	}else{
		count = array_length_2d(oGame.MiniMapWallStorage_X, array_X * (room_width/240) + array_Y )
	}
	oGame.MiniMapWallStorage_X[array_X * (room_width/240) + array_Y, count ] = x
	oGame.MiniMapWallStorage_Y[array_X * (room_width/240) + array_Y, count ] = y
}

