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

#region COUNTERS:
turboCooldown = 5 * room_speed;


#endregion

#region FLAGS:
shouldResetCooldowns = true;
isPlayerAlive = true;
isAccelerating = false;

#endregion