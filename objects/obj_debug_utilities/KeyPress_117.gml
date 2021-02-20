/// @description SPACE ROOM

switch (room){
	case room_space_001:
		room_goto(room_space_002);
		break;
	case room_space_002:
		room_goto(room_space_001);
		break;
}

// In case it is a room from other Game Mode:
if(room == room_planets_001){
	room_goto(room_space_001);	
}