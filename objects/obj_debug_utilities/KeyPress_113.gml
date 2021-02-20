/// @description TOGGLE FULL SCREEN

if(!fullScreen){
	window_set_fullscreen(true);
		fullScreen = true;
} else if(fullScreen){
	window_set_fullscreen(false);
	fullScreen = false;	
}


