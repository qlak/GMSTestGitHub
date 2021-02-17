/// @description DRAW INFO ON SCREEN:

// SHOW DEBUG INFORMATION ON SCREEN
// To add new line, choose proper Margin and add +1 to the textGap.
if(shouldShowDebugInfo){
	
	// Draw Debug Keybindings on screen:
	draw_set_colour(c_white);	
	draw_set_alpha(1);
	draw_text(headerMargin, textGap * 1, "DEBUG KEYS:");
	
	draw_set_alpha(0.85);
	draw_text(textMargin, textGap * 2, "F1: Debug Info");
	draw_text(textMargin, textGap * 3, "F2: Fullscreen");
	
	draw_set_colour(c_gray);	
	draw_set_alpha(0.70);
	draw_text(headerMargin, textGap * 4, "- - - - - - - -");
	
	// Draw Debug Information on screen:
	draw_set_colour(c_white);	
	draw_set_alpha(1);
	draw_text(headerMargin, textGap * 5, "DEBUG INFO:");
	
	draw_set_alpha(0.85);
	draw_text(textMargin, textGap * 6, "FPS = " + string(fps));
	
	
	// Get back to normal draw mode:
	draw_set_colour(c_white);
	draw_set_alpha(1);
}

