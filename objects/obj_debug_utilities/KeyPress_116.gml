/// @description PLANETS ROOM

// FOR FUTURE ROOM CHANGE:
/*
switch (room){
	case room_planets_001:
		room_goto(room_planets_002);
		break;
	case room_planets_002:
		room_goto(room_planets_001);
		break;
}
*/

// In case it is a room from other Game Mode:
if(room == room_space_001 || room == room_space_002){
	room_goto(room_planets_001);	
}