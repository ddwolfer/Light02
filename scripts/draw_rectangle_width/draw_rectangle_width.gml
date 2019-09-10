////@arg x1 
////@arg y1 
////@arg x2 
////@arg y2 
////@arg width 
////@arg color 

var x1 = argument0
var y1 = argument1
var x2 = argument2
var y2 = argument3
var width = argument4
var color = argument5

draw_set_color(color)

draw_line_width(x1,y1,x2,y1,width) //up
draw_line_width(x1,y2,x2,y2,width) //bot
draw_line_width(x1,y1 - width/2,x1,y2 + width/2,width) //left
draw_line_width(x2,y1 - width/2,x2,y2 + width/2,width) //right

draw_set_color(c_white)