
if(oPlayer.PlayerControl){
	up = keyboard_check(ord("W")) || gamepad_axis_value(0, gp_axislv) < -0.4;
	down = keyboard_check(ord("S")) || gamepad_axis_value(0, gp_axislv) > 0.4;
	right = keyboard_check(ord("D")) || gamepad_axis_value(0, gp_axislh) > 0.4;
	left = keyboard_check(ord("A")) || gamepad_axis_value(0, gp_axislh) < -0.4;
	action = keyboard_check_pressed(ord("E"));

	mouseL = mouse_check_button(mb_left);

	upL = gamepad_axis_value(0, gp_axisrv) < -0.4;
	downL = gamepad_axis_value(0, gp_axisrv) > 0.4;
	leftL = gamepad_axis_value(0, gp_axisrh) < -0.4;
	rightL = gamepad_axis_value(0, gp_axisrh) > 0.4;

}else{
	up = 0
	down = 0
	right = 0
	left = 0
	action = 0

	mouseL =0

	upL = 0
	downL = 0
	leftL = 0
	rightL = 0

}