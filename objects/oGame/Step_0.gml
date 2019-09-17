/// @description

instance_activate_all();
instance_deactivate_region(camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]), camera_get_view_width(view_camera[0]), camera_get_view_height(view_camera[0]), false, true);

//instance_activate_object(oWall);
//show_debug_message(instance_exists(oLightTitle));

systemFollowPlayer();