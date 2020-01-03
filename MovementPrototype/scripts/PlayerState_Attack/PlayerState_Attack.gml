hsp = 0;
vsp = 0;

switch(mode){
	case ATTACKMODE.CHOLERIC:
		if(sprite_index != SpriteCAl && sprite_index != SpriteCAr){
			if(obj_player.facing_left)
				sprite_index = SpriteCAl;
			else
				sprite_index = SpriteCAr;
			ds_list_clear(enemies_struck);
		}

		if(obj_player.facing_left)
			mask_index = SpriteCAlHitbox;
		else
			mask_index = SpriteCArHitbox;
		var enemiesStruckNow = ds_list_create();
		var hits = instance_place_list(x, y, obj_enemy, enemiesStruckNow, false);
		if(hits > 0){
			for(var i = 0; i < hits; i++){
				var hitID = enemiesStruckNow[| i];
				if( ds_list_find_index(enemies_struck, hitID) == -1){
					ds_list_add(enemies_struck, hitID);
					with(hitID){
						EnemyHit(4, obj_player.mode);
						audio_play_sound(Oof,4,false);
					}
				}
			}
		}
		ds_list_destroy(enemiesStruckNow);
		mask_index = spr_player;
		break;
		
	case ATTACKMODE.MELANCHOLIC:
		if(sprite_index != SpriteMAl && sprite_index != SpriteMAr){
			if(obj_player.facing_left)
				sprite_index = SpriteMAl;
			else
				sprite_index = SpriteMAr;
			ds_list_clear(enemies_struck);
		}
		
		if(obj_player.facing_left)
			mask_index = SpriteMAlHitbox;
		else
			mask_index = SpriteMArHitbox;
		var enemiesStruckNow = ds_list_create();
		var hits = instance_place_list(x, y, obj_enemy, enemiesStruckNow, false);
		if(hits > 0){
			for(var i = 0; i < hits; i++){
				var hitID = enemiesStruckNow[| i];
				if( ds_list_find_index(enemies_struck, hitID) == -1){
					ds_list_add(enemies_struck, hitID);
					with(hitID){
						EnemyHit(2, obj_player.mode);
						audio_play_sound(Oof,4,false);
					}
				}
			}
		}
		ds_list_destroy(enemiesStruckNow);
		mask_index = spr_player;
		break;
}

if(animationEnd()){
	if(obj_player.facing_left)
		sprite_index = spritesl;
	else
		sprite_index = spritesr;
	
	if(!key_left && key_smash && hasSideSmash)
		state = PLAYERSTATE.LEFT;
	
	if(key_right && key_smash && hasSideSmash)
		state = PLAYERSTATE.RIGHT;

	if(key_down && key_smash && hasDownSmash)
		state = PLAYERSTATE.DOWNSMASH;
	else
		state = PLAYERSTATE.FREE
}

