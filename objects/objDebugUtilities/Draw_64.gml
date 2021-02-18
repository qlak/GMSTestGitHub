/// @description DRAW INFO ON SCREEN:

// SHOW DEBUG INFORMATION ON SCREEN
// To add new line, choose proper Margin and add +1 to the textGap.
if(shouldShowDebugInfo){
	
	#region // KEYBINDINGS:
	// Draw Debug Keybindings on screen:
	draw_set_colour(c_white);	
	draw_set_alpha(1);
	draw_text(headerMargin, textGap * 1, "DEBUG KEYS:");
	
	draw_set_alpha(0.85);
	draw_text(textMargin, textGap * 2, "F1: Debug Info");
	draw_text(textMargin, textGap * 3, "F2: Fullscreen");
	draw_text(textMargin, textGap * 4, "F3: Debug Gamemode");	
	draw_text(textMargin, textGap * 5, "F4: Reset Room");
	draw_text(textMargin, textGap * 6, "F5: Planets Room");	
	draw_text(textMargin, textGap * 7, "F6: Space Room");
	
	
	// Draw Separator:
	draw_set_colour(c_gray);	
	draw_set_alpha(0.70);
	draw_text(headerMargin, textGap * 8, "- - - - - - - -");

	#endregion

	#region // SPACE DEBUG MODE:
	// Draw debug info in Space Game Mode:
	if(currentGameMode == "SPACE" && instance_exists(objPlayerSpace)){
		
		// Draw Debug Information on screen:
		draw_set_colour(c_white);	
		draw_set_alpha(1);
		draw_text(headerMargin, textGap * 9, "SPACE DEBUG INFO:");
	
		draw_set_alpha(0.85);
		draw_text(textMargin, textGap * 10, "FPS = " + string(fps));
	
	
		// Draw Player Debug Information on screen:
		draw_set_colour(c_white);	
		draw_set_alpha(1);
		draw_text(headerMargin, textGap * 11, "PLAYER DEBUG INFO:");
	
		draw_set_alpha(0.85);
		draw_text(textMargin, textGap * 12, "ACCELERATION = " + string(objPlayerSpace.acceleration));
		draw_text(textMargin, textGap * 13, "IS ACCELERATING = " + string(objPlayerSpace.isAccelerating == 1 ? "True" : "False"));
		draw_text(textMargin, textGap * 14, "SPEED = " + string(objPlayerSpace.speed));
		draw_text(textMargin, textGap * 15, "TURBO COOLDOWN = " + string(objPlayerSpace.turboCooldown / 60) + "s");	
		
	}
	#endregion
	
	#region // PLANETS DEBUG MODE:
	// Draw debug info in Planets Game Mode:
	if(currentGameMode == "PLANETS" && instance_exists(objPlayerPlanets)){
		// Draw Debug Information on screen:
		draw_set_colour(c_white);	
		draw_set_alpha(1);
		draw_text(headerMargin, textGap * 9, "PLANETS DEBUG INFO:");
	
		draw_set_alpha(0.85);
		draw_text(textMargin, textGap * 10, "FPS = " + string(fps));
	
	
		// Draw Player Debug Information on screen:
		draw_set_colour(c_white);	
		draw_set_alpha(1);
		draw_text(headerMargin, textGap * 11, "PLAYER DEBUG INFO:");
		draw_set_alpha(0.85);
		draw_text(textMargin, textGap * 12, "VERTICAL SPEED = " + string(objPlayerPlanets.verticalSpeed));
		draw_text(textMargin, textGap * 13, "HORIZONTAL SPEED = " + string(objPlayerPlanets.horizontalSpeed));
		draw_text(textMargin, textGap * 14, "IS JUMPING = " + string(objPlayerPlanets.isJumping == 1 ? "True" : "False"));
		draw_text(textMargin, textGap * 15, "X AND Y COORDS = (" + string(objPlayerPlanets.x) + "," + string_format(objPlayerPlanets.y, 0, 0) + ")");
		
	}
	
	#endregion
	
	// Get back to normal draw mode:
	draw_set_colour(c_white);
	draw_set_alpha(1);
	
}

