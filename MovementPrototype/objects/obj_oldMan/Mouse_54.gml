if(!obj_player.hasMedicine)
	text = "I need medicine\n my back hurts";
else {
	shouldDisappear = true;
	if (point_in_circle(obj_player.x, obj_player.y, x, y, 150)) {
		with (instance_create_layer(x+100,y+75,layer,obj_oldManText)) {
			text = other.text;
			length = string_length(text);
		}
	}
}