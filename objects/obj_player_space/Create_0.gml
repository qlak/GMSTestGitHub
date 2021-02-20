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


#endregion

#region PLAYER OBJECTS:
shipMidpartHigh = instance_create_layer(x, y, "PlayerLayer", obj_player_space_midpart_high);
shipCockpit = instance_create_layer(x, y, "PlayerLayer", obj_player_space_cockpit);
shipMidpartLow = instance_create_layer(x, y, "PlayerLayer", obj_player_space_midpart_low);
shipWings = instance_create_layer(x, y, "PlayerLayer", obj_player_space_wings);
shipEngine = instance_create_layer(x, y, "PlayerLayer", obj_player_space_engine);
#endregion

#region COUNTERS:
turboCooldownTime = 5 * room_speed;
turboCooldown = 0;

#endregion

#region FLAGS:
isPlayerAlive = true;
isAccelerating = false;

#endregion