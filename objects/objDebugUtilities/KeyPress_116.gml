/// @description PLANETS ROOM

// FOR FUTURE ROOM CHANGE:
/*
switch (room){
	case roomPlanets001:
		room_goto(roomPlanets002);
		break;
	case roomPlanets002:
		room_goto(roomPlanets001);
		break;
}
*/

// In case it is a room from other Game Mode:
if(room == roomSpace001 || room == roomSpace002){
	room_goto(roomPlanets001);	
}