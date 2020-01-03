if(instance_place(x, y+5, obj_breakable)){
	instance_destroy(instance_place(x, y+5, obj_breakable));
	audio_play_sound(RIPWall,5,false);
}

if(animationEnd()){
	sprite_index = spr_player;
	state = PLAYERSTATE.FREE
}