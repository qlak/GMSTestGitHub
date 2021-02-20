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

