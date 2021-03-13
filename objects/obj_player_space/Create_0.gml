/// @description CREATE VARIABLES

#region VARIABLES:
hp = 100;

turnSpeed = 2;
maxSpeed = 8;
acceleration = 0;
accelerationModifier = 0.001;
maxAcceleration = 0.4;
slowingModifier = 0.004;
turboModifier = 5;

aimDirectionThreshold = 48;
currentAimDirection = -1;


#endregion

#region PLAYER SPACESHIP PARTS OBJECTS:
shipMidpartHigh = instance_create_layer(x, y, "PlayerFrontLayer", obj_player_space_midpart_high);
shipCockpit = instance_create_layer(x, y, "PlayerFrontLayer", obj_player_space_cockpit);
shipWingsHigh = instance_create_layer(x, y, "PlayerFrontLayer", obj_player_space_wings_high);
shipMidpartLow = instance_create_layer(x, y, "PlayerMiddleLayer", obj_player_space_midpart_low);
shipWingsLow = instance_create_layer(x, y, "PlayerMiddleLayer", obj_player_space_wings_low);
shipEngineHigh = instance_create_layer(x, y, "PlayerMiddleLayer", obj_player_space_engine_high);
shipEngineLow = instance_create_layer(x, y, "PlayerBackLayer", obj_player_space_engine_low);
shipCrosshair = instance_create_layer(mouse_x, mouse_y, "PlayerFrontLayer", obj_cursor_spaceship);
#endregion

#region COUNTERS:
turboCooldownTime = 5 * room_speed;
turboCooldown = 0;

#endregion

#region FLAGS:
isPlayerAlive = true;
isAccelerating = false;
shouldStartEngine = false;
canUpdateAimDirection = false;
canUpdateCrosshair = false;

#endregion