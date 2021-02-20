/// @description EFFECT TIMELINE:

// Create a number of objDust that travel in particular direction:
for(var i = 0; i < dustsNumber; i++){
	
	with(instance_create_layer(x + dustSpawnOffset, y + dustSpawnOffset, "EffectsBehindLayer", obj_dust)){
		
		speed = other.dustSpeed;	
		direction = other.direction + other.dustDirectionChange;
		image_blend = make_colour_hsv(random(255), random(255), random(255));

	}
	
	// Change variables for the new objDust to be respawned:
	dustSpawnOffset = random_range(-40, 40);
	dustSpeed = random_range(1, 6);
	dustDirectionChange = random_range(-55, 55);
	
}

// When the objDust initialisation loop is finished, destroy the objTurboBoost instance:
instance_destroy();


