/// @description 
width = room_width; 
height = room_height;


scale = width/192
minimapX = 10;
minimapY = 10;

for(var i = 0 ; i < width/240 ; i++){
	for(var j = 0 ; j < height/160 ; j++){
		MapWalkThrogh[i , j] = 0
	}
}

MapWalkThrogh[0,0] = 1
