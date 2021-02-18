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
	draw_text(textMargin, textGap * 4, "F4: Reset Room");
	
	
	// Draw Separator:
	draw_set_colour(c_gray);	
	draw_set_alpha(0.70);
	draw_text(headerMargin, textGap * 5, "- - - - - - - -");


	// Draw Debug Information on screen:
	draw_set_colour(c_white);	
	draw_set_alpha(1);
	draw_text(headerMargin, textGap * 6, "DEBUG INFO:");
	
	draw_set_alpha(0.85);
	draw_text(textMargin, textGap * 7, "FPS = " + string(fps));
	
	
	// Draw Player Debug Information on screen:
	draw_set_colour(c_white);	
	draw_set_alpha(1);
	draw_text(headerMargin, textGap * 8, "PLAYER DEBUG INFO:");
	
	draw_set_alpha(0.85);
	draw_text(textMargin, textGap * 9, "ACCELERATION = " + string(objPlayer.acceleration));
	draw_text(textMargin, textGap * 10, "IS ACCELERATING = " + string(objPlayer.isAccelerating == 1 ? "True" : "False"));
	draw_text(textMargin, textGap * 11, "SPEED = " + string(objPlayer.speed));
	draw_text(textMargin, textGap * 12, "TURBO COOLDOWN = " + string(objPlayer.turboCooldown / 60) + "s");	
	
	
	// Get back to normal draw mode:
	draw_set_colour(c_white);
	draw_set_alpha(1);
}

