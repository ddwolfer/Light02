/// @description 
draw_set_color(c_black)
draw_set_alpha(0.5)
draw_rectangle(minimapX, minimapY, minimapX + width / scale + 4, minimapY + height / scale + 4,0) //微黑的背景
draw_set_alpha(1)
draw_set_color(c_white);
draw_rectangle_width(minimapX, minimapY, minimapX + width / scale + 4 , minimapY + height / scale + 4,4,c_white) //框框

//畫牆壁
var Wallscale = camera_get_view_height(view_camera[0])/32
for(var i = 0 ; i < width/240 ; i++){
	for(var j = 0 ; j < height/160 ; j++){
		if( MapWalkThrogh[i , j] ){ //如果是走過的地方
			if( (i>= MiniMapX1 && i<=MiniMapX2) && (j>= MiniMapY1 && j<=MiniMapY2) ){
				show_debug_message("["+string(i)+" ,"+string(j)+"]"+"| 有幾個牆壁："+string(array_length_2d(oGame.MiniMapWallStorage_X , i * (room_width/240) + j)))
				for(var k = 0 ; k < array_length_2d(oGame.MiniMapWallStorage_X , i * (room_width/240) + j) ; k++ ){ //把每個牆壁印出來
					draw_set_color(c_blue)
					Wall_X = oGame.MiniMapWallStorage_X[ i * (room_width/240) + j , k]
					Wall_Y = oGame.MiniMapWallStorage_Y[ i * (room_width/240) + j , k] 
					draw_rectangle(14 + Wall_X/Wallscale - oWall.sprite_width/(2*Wallscale) - (MiniMapX1*240/5),
								   14 + Wall_Y/Wallscale - oWall.sprite_width/(2*Wallscale) - (MiniMapY1*160/5),
								   14 + Wall_X/Wallscale + oWall.sprite_width/(2*Wallscale) - (MiniMapX1*240/5),
								   14 + Wall_Y/Wallscale + oWall.sprite_width/(2*Wallscale) - (MiniMapY1*160/5),0)
				}
			}
		}
	}
}
draw_set_color(c_white)

//玩家位置
with(oPlayer){
	var PlayerScale = camera_get_view_height(view_camera[0])/32
	draw_set_color(c_red)
	draw_rectangle(10+x/PlayerScale-sprite_width/(2*5) - (oMiniMap.MiniMapX1*240/5),
				   10+y/PlayerScale-sprite_width/(2*5) - (oMiniMap.MiniMapY1*160/5),
				   10+x/PlayerScale+sprite_width/(2*5) - (oMiniMap.MiniMapX1*240/5),
				   10+y/PlayerScale+sprite_width/(2*5) - (oMiniMap.MiniMapY1*160/5),0)
}