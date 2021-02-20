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
turboCooldownTime = 5 * room_speed;
turboCooldown = 0;

#endregion

#region FLAGS:
isPlayerAlive = true;
isAccelerating = false;

#endregion