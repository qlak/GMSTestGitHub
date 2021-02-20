/// @description UPDATE VIEW

// Zoom out:
if(obj_player_space.speed > (obj_player_space.maxSpeed * 0.8) && viewWidth <= baseViewWidth + 600){
	viewWidth = viewWidth + zoomModifier;
	viewHeight = viewHeight + (zoomModifier / 2);
}
// Zoom in:
if(obj_player_space.speed < (obj_player_space.maxSpeed * 0.6) && viewWidth > baseViewWidth){
	viewWidth = viewWidth - zoomModifier * 2;
	viewHeight = viewHeight - zoomModifier;
}

camera_set_view_size(view_camera[0], viewWidth, viewHeight);

if(instance_exists(obj_player_space)){
	
	var viewX = clamp(obj_player_space.x - (viewWidth / 2), 0, room_width - viewWidth);
	var viewY = clamp(obj_player_space.y - (viewHeight / 2), 0, room_height - viewHeight);
	
	
	var currentViewX = camera_get_view_x(view_camera[0]);
	var currentViewY = camera_get_view_y(view_camera[0]);
	
	var cameraSpeed = 0.1;

	camera_set_view_pos(view_camera[0], lerp(currentViewX, viewX, cameraSpeed), lerp(currentViewY, viewY, cameraSpeed));
	
}

