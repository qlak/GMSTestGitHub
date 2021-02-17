/// @description PLAYER BEHAVIOR

#region KEY BINDING:

keyLeft = keyboard_check(vk_left) || keyboard_check(ord("A"));
keyRight = keyboard_check(vk_right) || keyboard_check(ord("D"));
keySpeedUp = keyboard_check(vk_up) || keyboard_check(ord("W"));
keySlowDown = keyboard_check(vk_down) || keyboard_check(ord("S"));
keyTurbo = keyboard_check_pressed(vk_space);

#endregion

#region MOVEMENT:

// ACCELERATION:
// Accelerate when holding keySpeedUp:
if(speed <= maxSpeed && keySpeedUp && !keySlowDown){
	speed = speed + acceleration;
	isAccelerating = true;
} else {
	isAccelerating = false;	
}

if(isAccelerating){
	// The longer hold of keySpeedUp the stronger acceleration:
	if(acceleration <= maxAcceleration){
		acceleration += accelerationModifier;	
	}
} else {
	if(acceleration > 0){
		acceleration = 0;
	}
	// Slowly lose speed when not accelerating:
	if(speed > 0){
		speed = speed - slowingModifier;	
	}
	// Stop in case speed is negative.
	if(speed < 0){
		speed = 0;	
	}
}
// Slow down when max speed was somehow exceeded:
if(speed > maxSpeed){
	speed = speed - 0.05	
}

// TURBO:
// Press keyTurbo to accelerate even more!
if(keyTurbo && turboCooldown == 0 && speed <= maxSpeed && !keySlowDown){
	show_debug_message("Turbo ON!");
	speed = speed + turboModifier;
}
if(turboCooldown > 0){
	turboCooldown = turboCooldown - 1;	
}

// SLOWING DOWN:
// Slow down when pressing keySlowDown:
if(keySlowDown){
	if(speed > 0){
		speed = speed - (slowingModifier * 10);	
	}
	if(speed < 0){
		speed = 0;	
	}
}

// TURNING:
// Turn left when pressing keyLeft:
if(keyLeft && !keyRight){
	direction = direction + turnSpeed;
}
// Turn right when pressing keyRight:
if(keyRight && !keyLeft){
	direction = direction - turnSpeed;
}
image_angle = direction;

#endregion

