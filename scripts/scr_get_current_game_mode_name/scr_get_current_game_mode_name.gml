// This function gets the String with the name of the current GameMode.
function scr_get_current_game_mode_name(){

	var currentGameMode;

	if(global.currentGameMode == gameModes.SPACE){
		currentGameMode = "SPACE";	
	}
	
	if(global.currentGameMode == gameModes.PLANETS){
		currentGameMode = "PLANETS";	
	}
	
	return currentGameMode;
}