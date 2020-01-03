/// @description Health bar

draw_sprite_stretched(spr_healthBar,0,healthbar_x,healthbar_y,(hp/maxHp) * healthbar_width, healthbar_height);
draw_sprite(spr_healthCase,0,healthbar_x,healthbar_y);
