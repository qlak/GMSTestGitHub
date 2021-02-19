/// @description SPACE ROOM

switch (room){
	case roomSpace001:
		room_goto(roomSpace002);
		break;
	case roomSpace002:
		room_goto(roomSpace001);
		break;
}

// In case it is a room from other Game Mode:
if(room == roomPlanets001){
	room_goto(roomSpace001);	
}