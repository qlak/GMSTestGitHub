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
	
	// Shoot out some objDust particles when starting to accelerate:
	if(speed <= (maxSpeed / 3)){	
		with(instance_create_layer(x, y, "EffectsBehindLayer", obj_dust)){
			speed = random_range(0, 6);	
			direction = (other.direction + 180) + irandom_range(-35, 35);
		}
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

