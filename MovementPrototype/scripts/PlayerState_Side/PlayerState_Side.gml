isLeft = argument0;

if(isLeft) {
	if(instance_place(x-5, y, obj_breakable)) {
		instance_destroy(instance_place(x-5, y, obj_breakable));
		audio_play_sound(RIPWall,5,false);
	}
}
else {
	if(instance_place(x+5, y, obj_breakable)){
		instance_destroy(instance_place(x+5, y, obj_breakable));
		audio_play_sound(RIPWall,5,false);
	}
}

if(animationEnd()){
	sprite_index = spr_player;
	state = PLAYERSTATE.FREE
}