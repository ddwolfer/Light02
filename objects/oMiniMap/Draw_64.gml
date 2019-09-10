/// @description 
draw_set_color(c_black)
draw_set_alpha(0.5)
draw_rectangle(minimapX, minimapY, minimapX + width / scale, minimapY + height / scale,0)
draw_set_alpha(1)
draw_set_color(c_white);
draw_rectangle_width(minimapX, minimapY, minimapX + width / scale, minimapY + height / scale,4,c_white)


with(oWall){
	if( oMiniMap.MapWalkThrogh[ (x-x%240)/240 , (y-y%160)/160 ] ){
		draw_set_color(c_blue);
		draw_rectangle(10+x/5-sprite_width/(2*5),10+y/5-sprite_width/(2*5),10+x/5+sprite_width/(2*5),10+y/5+sprite_width/(2*5),0)
	}
}

with(oPlayer){
	draw_set_color(c_red)
	draw_rectangle(10+x/5-sprite_width/(2*5),10+y/5-sprite_width/(2*5),10+x/5+sprite_width/(2*5),10+y/5+sprite_width/(2*5),0)
}