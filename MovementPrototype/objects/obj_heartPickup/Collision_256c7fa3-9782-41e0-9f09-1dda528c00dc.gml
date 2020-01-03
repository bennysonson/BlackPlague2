/// @description picked up
instance_destroy();
obj_player.hp += 5;
if(obj_player.hp > obj_player.maxHp)
	obj_player.hp = obj_player.maxHp;
audio_play_sound(PowerUp,3,false);