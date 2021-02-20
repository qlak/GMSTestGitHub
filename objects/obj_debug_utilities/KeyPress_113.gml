/// @description TOGGLE FULL SCREEN

if(!global.isFullScreenOn){
	window_set_fullscreen(true);
		global.isFullScreenOn = true;
} else if(global.isFullScreenOn){
	window_set_fullscreen(false);
	global.isFullScreenOn = false;	
}


