//Calculate movement
move = key_left + key_right;
if(move < 0)
	facing_left = true;
else if(move > 0)
	facing_left = false;
hsp = move * movespeed;

if(vsp < 10) vsp += grav;

if(place_meeting(x, y+1, obj_wall)) {
	vsp = key_jump * -jumpspeed;
}
if (key_jump) && (jumps > 0) {
	jumps -= 1;
	vsp = -jumpspeed
}

if (place_meeting(x,y+1,obj_wall)) 
 {
	jumps = jumpsmax;
 }

 if ((key_jump) && (place_meeting(x+1,y,obj_wall) || place_meeting(x-1,y,obj_wall)) && hasWallJump)
 {
	vsp = -jumpspeed;
	jumps = jumps;
 }
 
 //If player is hit
 if (place_meeting(x,y,obj_enemy)) {
	 hp -= obj_enemy.damage;
	 audio_play_sound(Player_Hit,2,false);
 }

//Horizontal collision
if(place_meeting(x + hsp, y, obj_wall)) {
	while(!place_meeting(x+sign(hsp),y,obj_wall)){
		x += sign(hsp);
	}
	hsp = 0;
}

//Vertical collision
if(place_meeting(x, y + vsp, obj_wall)) {
	while(!place_meeting(x,y + sign(vsp),obj_wall)){
		y += sign(vsp);
	}
	vsp = 0;
}

x += hsp;
y += vsp;

if(key_change_mode)
	changeAttackMode();

if(key_attack)
	state = PLAYERSTATE.ATTACK;
	
if(!key_left && key_smash && hasSideSmash)
	state = PLAYERSTATE.LEFT;
	
if(key_right && key_smash && hasSideSmash)
	state = PLAYERSTATE.RIGHT;

if(key_down && key_smash && hasDownSmash)
	state = PLAYERSTATE.DOWNSMASH;
	
if key_right = 1
	sprite_index = spritemr;

if key_left = -1
	sprite_index = spriteml;

if sprite_index = spritemr && key_right != 1 && key_left != -1
	sprite_index = spritesr;

if sprite_index = spriteml && key_right != 1 && key_left != -1
	sprite_index = spritesl;