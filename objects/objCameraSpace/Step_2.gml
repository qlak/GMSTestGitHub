/// @description UPDATE VIEW

// Zoom out:
if(objPlayerSpace.speed > (objPlayerSpace.maxSpeed * 0.8) && viewWidth <= baseViewWidth + 600){
	viewWidth = viewWidth + zoomModifier;
	viewHeight = viewHeight + (zoomModifier / 2);
}
// Zoom in:
if(objPlayerSpace.speed < (objPlayerSpace.maxSpeed * 0.6) && viewWidth > baseViewWidth){
	viewWidth = viewWidth - zoomModifier * 2;
	viewHeight = viewHeight - zoomModifier;
}

camera_set_view_size(view_camera[0], viewWidth, viewHeight);

if(instance_exists(objPlayerSpace)){
	
	var viewX = clamp(objPlayerSpace.x - (viewWidth / 2), 0, room_width - viewWidth);
	var viewY = clamp(objPlayerSpace.y - (viewHeight / 2), 0, room_height - viewHeight);
	
	
	var currentViewX = camera_get_view_x(view_camera[0]);
	var currentViewY = camera_get_view_y(view_camera[0]);
	
	var cameraSpeed = 0.1;

	camera_set_view_pos(view_camera[0], lerp(currentViewX, viewX, cameraSpeed), lerp(currentViewY, viewY, cameraSpeed));
	
}

