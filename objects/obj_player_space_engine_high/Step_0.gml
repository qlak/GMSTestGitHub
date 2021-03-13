/// @description ENGINE BEHAVIOR:

if(shouldStartEngine){
	with(instance_create_layer(x + lengthdir_x(50, direction), y + lengthdir_y(50, direction), "EffectsMidBackLayer", obj_dust)){
		speed = random_range(0, 6);	
		direction = other.direction + irandom_range(-35, 35);
		image_blend = make_colour_rgb(252, 132, 3);
	}
	with(instance_create_layer(x + lengthdir_x(50, direction), y + lengthdir_y(50, direction), "EffectsMidBackLayer", obj_dust)){
		speed = random_range(0, 6);	
		direction = other.direction + irandom_range(-35, 35);
		image_blend = make_colour_rgb(252, 227, 3);
	}
}

// Shoot out some objDust particles when starting to accelerate:
if(isAccelerating){
	with(instance_create_layer(x + lengthdir_x(50, direction), y + lengthdir_y(50, direction), "EffectsMidBackLayer", obj_dust)){
		speed = random_range(0, 6);	
		direction = other.direction + irandom_range(-35, 35);
	}
}

