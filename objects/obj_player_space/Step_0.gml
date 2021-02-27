/// @description PLAYER BEHAVIOR

#region KEY BINDING:

keyLeft = keyboard_check(vk_left) || keyboard_check(ord("A"));
keyRight = keyboard_check(vk_right) || keyboard_check(ord("D"));
keySpeedUp = keyboard_check(vk_up) || keyboard_check(ord("W"));
keySlowDown = keyboard_check(vk_down) || keyboard_check(ord("S"));
keyTurbo = keyboard_check_pressed(vk_space);

#endregion

#region MOVEMENT - KEYBOARD:

// ACCELERATION:
// Accelerate when holding keySpeedUp:
if(speed <= maxSpeed && keySpeedUp && !keySlowDown){
	speed = speed + acceleration;
	isAccelerating = true;
} else {
	isAccelerating = false;	
}

// When the ship is gaining speed:
if(isAccelerating){
	// The longer hold of keySpeedUp the stronger acceleration:
	if(acceleration <= maxAcceleration){
		acceleration += accelerationModifier;	
	}
	
	// Start Engine with more particles when starting acceleration:
	if(speed <= (maxSpeed / 3)){	
		shouldStartEngine = true;	
	} else {
		shouldStartEngine = false;	
	}
} else {
	// Reset Acceleration if ship is not accelerating and somehow has value different than 0:
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

// Start slowing down when max speed was somehow exceeded:
if(speed > maxSpeed){
	speed = speed - 0.05	
}


// TURBO:
// Press keyTurbo to accelerate even more!
if(keyTurbo && turboCooldown == 0 && speed <= maxSpeed && !keySlowDown){
	show_debug_message("Turbo ON!");
	
	// Create objTurboBoost instance when starting Turbo:
	with(instance_create_layer(x, y, "EffectsBehindLayer", obj_turbo_boost)){
		speed = random_range(-2, -4);	
		direction = other.direction + 180;
	}
	
	speed = speed + turboModifier;
	turboCooldown = turboCooldownTime;
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

#region MOVEMENT - MOUSE:


if(abs(angle_difference(point_direction(x, y, mouse_x, mouse_y), direction)) < aimDirectionThreshold){
	
	mouseX = mouse_x;
	mouseY = mouse_y;
	
	currentAimDirection = angle_difference(point_direction(x, y, mouse_x, mouse_y), direction);
	
	canUpdateAimDirection = true;
} else {
	canUpdateAimDirection = false;	
}


#endregion



#region UPDATE ALL THE PARTS:
with(shipMidpartHigh){
	if(other.canUpdateAimDirection){
		direction = point_direction(x, y, other.mouseX, other.mouseY);
		image_angle = point_direction(x, y, other.mouseX, other.mouseY);
	} else {
		direction = other.direction + other.currentAimDirection;
		image_angle = other.direction + other.currentAimDirection;
	}
	
	x = other.x
	y = other.y
}
with(shipCockpit){
	direction = other.direction;
	image_angle = other.direction;
	x = other.x
	y = other.y
	
}
with(shipWingsHigh){
	direction = other.direction;
	image_angle = other.direction;
	x = other.x
	y = other.y
}
with(shipMidpartLow){
	if(other.canUpdateAimDirection){
		direction = point_direction(x, y, other.mouseX, other.mouseY);
		image_angle = point_direction(x, y, other.mouseX, other.mouseY);
	} else {
		direction = other.direction + other.currentAimDirection;
		image_angle = other.direction + other.currentAimDirection;
	}
	
	x = other.x
	y = other.y
}
with(shipWingsLow){
	direction = other.direction;
	image_angle = other.direction;
	x = other.x
	y = other.y
}
with(shipEngineHigh){
	direction = other.direction + 180;
	image_angle = other.direction;
	x = other.x
	y = other.y
	speed = other.speed
	
	shouldStartEngine = other.shouldStartEngine;
	isAccelerating = other.isAccelerating;
	
}
with(shipEngineLow){
	direction = other.direction + 180;
	image_angle = other.direction;
	x = other.x
	y = other.y
	speed = other.speed
}

#endregion

