/// @description PLAYER PLANET STEP
/* 
variables declared with var are local and after one step are deleted,
ones without var are instance variable and they are stored as long as instance exists
*/

#region Keybindings

keyLeft = keyboard_check(vk_left) || keyboard_check(ord("A"));
keyRight = keyboard_check(vk_right) || keyboard_check(ord("D"));
keyDown = keyboard_check(vk_down) || keyboard_check(ord("S"));
keyJump = keyboard_check_pressed(vk_space) || keyboard_check(ord("W")) || keyboard_check_pressed(vk_up);

#endregion

#region Functions

#endregion



#region Movement

var move = keyRight - keyLeft; 
horizontalSpeed = move * walkSpeed
verticalSpeed += grv;

#region Collisions

// Horizontal collision
if(place_meeting(x + horizontalSpeed, y,obj_wall_planets)) {
	while(!place_meeting(x + sign(horizontalSpeed),y ,obj_wall_planets)) { 
		x+= sign(horizontalSpeed);	
	}
	horizontalSpeed = 0;
}

x += horizontalSpeed;

// Vertical collision
if(place_meeting(x, y+verticalSpeed, obj_wall_planets)) {
	while(!place_meeting(x, y+sign(verticalSpeed), obj_wall_planets)) { 
		y += sign(verticalSpeed);	
	}
	verticalSpeed = 0;
	isJumping = false;
}
y += verticalSpeed;

#endregion

//Jumping
if(keyJump && place_meeting(x, y+1, obj_wall_planets)) { 
	verticalSpeed = -9;
	isJumping = true;
}

if(keyDown && !place_meeting(x, y+1, obj_wall_planets)) { 
	verticalSpeed ++;
}

#endregion



#region Animations

if(isJumping) {

	//IN AIR
	
	if(sign(verticalSpeed) < 0) {
		
		if(sprite_index != spr_player_planets_a) {
			sprite_index = spr_player_planets_a;
			image_index = 1;
		}
		
			
		if(image_index >= 3) {
			image_index = 3;
			image_speed = 0;
			}
		}
	
	// FALLING DOWN
	else if(sign(verticalSpeed) >= 0 && !place_meeting(x, y+1, obj_wall_planets)){
		if(image_index > 2 && sprite_index == spr_player_planets_a_falling) {
			image_speed = 0;
			}
		else {
			if(sprite_index != spr_player_planets_a_falling) {
				sprite_index = spr_player_planets_a_falling;
				image_index = 1;
			}

			image_speed = 1;
		}
	}

}
else {
	image_speed = 1;
	if (horizontalSpeed == 0) sprite_index = spr_player_planets; else sprite_index = spr_player_planets_running;
}

//facing left or right
if(horizontalSpeed != 0) image_xscale = sign(horizontalSpeed);


#endregion