if(vsp < 10) vsp += grav;
if(!stunned){
//If about to go off ledge, flip horizontal movement
if (grounded && afraidOfHeights && !place_meeting(x+hsp,y+1,obj_wall)){
	hsp = -hsp;
}

switch (state) {
	case e_state.idle: {
		hsp = 0;
		vsp = min(7,vsp+.05);
		if (distance_to_object(obj_player) < 2000) state = e_state.chase;
	}
	break;
	case e_state.chase: {
		dir  = sign(obj_player.x - x);
		hsp = dir * 2;
		vsp = min(7, vsp + .05);
		if (distance_to_object(obj_player) > 2000) state = e_state.idle;
		alarm[0] = room_speed/1.5;
	}
	break;
}

if(place_meeting(x + hsp, y, obj_wall)) {
	while(!place_meeting(x+sign(hsp),y,obj_wall)){
		x += sign(hsp);
	}
	hsp = -hsp;
}


if(place_meeting(x, y + vsp, obj_wall)) {
	while(!place_meeting(x,y + sign(vsp),obj_wall)){
		y += sign(vsp);
	}
	vsp = 0;
}

x += hsp;
y += vsp;

if (!hsp = 0){
	image_xscale = sign(hsp) * size;
}
image_yscale = size;

if (!place_meeting(x,y+1,obj_wall)) {
	grounded = false;
} else {
	grounded = true;
}
} else if(stunnedCounter > 0){
	stunnedCounter--;
} else {
	stunned = false;
}

if (chp <= 0 && mhp <= 0) {
	room_goto(gameWin);
}

