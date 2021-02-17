/// @description DRAW INFO ON SCREEN:

if(shouldShowDebugInfo){
	draw_set_colour(c_white);
	draw_set_alpha(1);
	draw_text(30, 16, "DEBUG INFO:");
	
	draw_set_alpha(0.85);
	draw_text(36, 32, "FPS = " + string(fps));
	
	
	draw_set_alpha(1);
	draw_text(30, 48, "DEBUG KEYS:");
	
	draw_set_alpha(0.85);
	draw_text(36, 64, "F1: Debug Info");
	draw_text(36, 80, "F2: Fullscreen");
	
	
	draw_set_alpha(1);
}

