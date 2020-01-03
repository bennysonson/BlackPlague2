/// @description Initialize Variables
grav = 0.4;
hsp = 0;
vsp = 0;
jumpspeed = 10;
movespeed = 4;
jumps = 0;
jumpsmax = 1;
hp = 25;
maxHp = 25;
facing_left = false;

healthbar_width = 96;
healthbar_height = 22;
healthbar_x = (2048/4) - (healthbar_width/2);
healthbar_y = ystart - 250;

state = PLAYERSTATE.FREE;
mode = ATTACKMODE.CHOLERIC;
enemies_struck = ds_list_create();

hasSideSmash = false;
hasDownSmash = false;
hasMedicine = false;
hasWallJump = true;

enum PLAYERSTATE {
	FREE,
	ATTACK,
	LEFT,
	RIGHT,
	DOWNSMASH,
}

enum ATTACKMODE {
	CHOLERIC,
	PHLEGMATIC,
	MELANCHOLIC,
	SANGUINE
}