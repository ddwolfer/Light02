///@arg lastroom
///@arg nextroom

var lastRoom = argument0
var nextRoom = argument1
var target = argument2;
show_debug_message("in")
if(target == "x"){
	//for (var R_X = lastRoom ; R_X <= nextRoom ; R_X++){
		R_X = approach(lastRoom, nextRoom , 2)
		camera_set_view_pos(view_camera[0], R_X, camera_get_view_y(view_camera[0]))
	
}

