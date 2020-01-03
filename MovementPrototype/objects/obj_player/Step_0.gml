//Player input
key_right = keyboard_check(ord("D"));
key_left = -keyboard_check(ord("A"));
key_jump = keyboard_check_pressed(ord("W"));
key_down = keyboard_check(ord("S"));
key_attack = mouse_check_button(mb_left);
key_change_mode = mouse_check_button(mb_right);
key_smash = keyboard_check_pressed(ord(" "));

if (hp = 0) {
	instance_destroy();
	room_goto(gameOver);
}


switch(state){
	case PLAYERSTATE.FREE: PlayerState_Free(); break;
	case PLAYERSTATE.ATTACK: PlayerState_Attack(); break;
	case PLAYERSTATE.LEFT: PlayerState_Side(true); break;
	case PLAYERSTATE.RIGHT: PlayerState_Side(false); break;
	case PLAYERSTATE.DOWNSMASH: PlayerState_Down(); break;
}