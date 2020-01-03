var damage = argument0;
var mode = argument1;
switch(mode){
	case ATTACKMODE.CHOLERIC:
		chp -= damage;
		break;
	case ATTACKMODE.MELANCHOLIC:
		mhp -= damage;
		break;
	case ATTACKMODE.PHLEGMATIC:
		php -= damage;
		break;
	case ATTACKMODE.SANGUINE:
		shp -= damage;
		break;
}
knocked = sign(x - obj_player.x)*(12 * damage);
if(place_meeting(x + knocked, y, obj_wall)) {
	while(!place_meeting(x+sign(knocked),y,obj_wall)){
		x += sign(knocked);
	}
}
else
	x += knocked;
stunned = true;
stunnedCounter = 10 * damage;
if(chp <= 0 && mhp <= 0 && php <= 0 && shp <= 0){
	instance_destroy();
	audio_play_sound(choose(death1,death2,death3),4,false);
}