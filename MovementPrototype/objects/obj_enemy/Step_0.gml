if(vsp < 10) vsp += grav;
if(!stunned){
//If about to go off ledge, flip horizontal movement
if (grounded && afraidOfHeights && !place_meeting(x+hsp,y+1,obj_wall)){
	hsp = -hsp;
	i++;
	
	if (i%2=1) {
		sprite_index = Infectedl;
	} else if (i %2 = 0) {
		sprite_index = Infectedr;
	}
	
}

if(place_meeting(x + hsp, y, obj_wall)) {
	while(!place_meeting(x+sign(hsp),y,obj_wall)){
		x += sign(hsp);
	}
	hsp = -hsp;
	i++;
	
	if (i%2=1) {
		sprite_index = Infectedl;
	}
	else if (i %2 = 0) {
		sprite_index = Infectedr;
	}
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
