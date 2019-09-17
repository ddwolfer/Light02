/// @description 
width = room_width; 
height = room_height;

cameraWidth = 240
cameraHeight = 160
scale = width/192
minimapX = 10;
minimapY = 10;
//用於紀錄Player過的地方
for(var i = 0 ; i < width/cameraWidth ; i++){
	for(var j = 0 ; j < height/cameraHeight ; j++){
		MapWalkThrogh[i , j] = 0
	}
}
MapWalkThrogh[0,0] = 1 //初始的地方

//開頭直接先把整個地圖copy下來
//MiniMapStorage[ y * len(x) + x (地圖分格子後編號4*4就0~15之類) , 該格子內有幾個wall
/*
MiniMapStorage[0,0] = 0
with(oWall){
	//判定此牆壁在哪一格
	array_X = ( x - (x%oMiniMap.cameraWidth) ) / oMiniMap.cameraWidth
	array_Y = ( y - (y%oMiniMap.cameraHeight) ) / oMiniMap.cameraHeight
	//大小
	var Wallscale = camera_get_view_height(view_camera[0])/32
	draw_set_color(c_blue)
	//此格子內的第幾號牆壁 假設陣列內有5個了 那len抓出來的int就會是5 剛好下一個加在陣列第5個
	var count = array_length_2d(oMiniMap.MiniMapStorage, array_X * (oMiniMap.height/160) )
	oMiniMap.MiniMapStorage[array_X * (oMiniMap.height/160) + array_Y ,count] = draw_rectangle(10+x/Wallscale-sprite_width/(2*5),10+y/Wallscale-sprite_width/(2*5),10+x/Wallscale+sprite_width/(2*5),10+y/Wallscale+sprite_width/(2*5),0)
	oMiniMap.MiniMapStorage[array_X * (oMiniMap.height/160) + array_Y ,count].image_alpha = 1
	
	draw_set_color(c_white);
}*/