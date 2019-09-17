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

