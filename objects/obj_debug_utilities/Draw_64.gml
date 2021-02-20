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
	if(currentGameMode == "SPACE" && instance_exists(obj_player_space)){
		
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
		draw_text(textMargin, textGap * 12, "ACCELERATION = " + string(obj_player_space.acceleration));
		draw_text(textMargin, textGap * 13, "IS ACCELERATING = " + string(obj_player_space.isAccelerating == 1 ? "True" : "False"));
		draw_text(textMargin, textGap * 14, "SPEED = " + string(obj_player_space.speed));
		draw_text(textMargin, textGap * 15, "TURBO COOLDOWN = " + string(obj_player_space.turboCooldown / 60) + "s");	
		
	}
	#endregion
	
	#region // PLANETS DEBUG MODE:
	// Draw debug info in Planets Game Mode:
	if(currentGameMode == "PLANETS" && instance_exists(obj_player_planets)){
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
		draw_text(textMargin, textGap * 12, "VERTICAL SPEED = " + string(obj_player_planets.verticalSpeed));
		draw_text(textMargin, textGap * 13, "HORIZONTAL SPEED = " + string(obj_player_planets.horizontalSpeed));
		draw_text(textMargin, textGap * 14, "IS JUMPING = " + string(obj_player_planets.isJumping == 1 ? "True" : "False"));
		draw_text(textMargin, textGap * 15, "X AND Y COORDS = (" + string(obj_player_planets.x) + "," + string_format(obj_player_planets.y, 0, 0) + ")");
		
	}
	
	#endregion
	
	// Get back to normal draw mode:
	draw_set_colour(c_white);
	draw_set_alpha(1);
	
}

