/// @description PLAYER BEHAVIOR

#region KEY BINDING:

keyLeft = keyboard_check(vk_left) || keyboard_check(ord("A"));
keyRight = keyboard_check(vk_right) || keyboard_check(ord("D"));
keySpeedUp = keyboard_check(vk_up) || keyboard_check(ord("W"));
keySlowDown = keyboard_check(vk_down) || keyboard_check(ord("S"));

#endregion


#region MOVEMENT:

// ACCELERATION:
// Accelerate when holding keySpeedUp:
if(speed < maxSpeed && keySpeedUp && !keySlowDown){
	speed = speed + acceleration;
	isAccelerating = true;
} else {
	isAccelerating = false;	
}

if(isAccelerating){
	// The longer hold of keySpeedUp the stronger acceleration:
	if(acceleration <= maxAcceleration){
		acceleration = acceleration + accelerationModifier;	
	}
} else {
	if(acceleration > 0){
		acceleration = 0;
	}
	// Slowly lose speed when not accelerating:
	if(speed > 0){
		speed = speed - slowingModifier;	
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

#endregion

