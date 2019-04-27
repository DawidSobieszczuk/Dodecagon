if(key_back) {
	game_to_menu();
	return;
}

if(key_timer <= key_delay) key_timer++
if(key_action_timer <= key_action_delay) key_action_timer++

if((key_down || key_left) && key_timer > key_delay) {
	offset++;
	key_timer = 0;
}

if((key_up || key_right) && key_timer > key_delay) {
	offset--;
	key_timer = 0;
}

if(key_action && key_action_timer > key_action_delay) {
	move_speed = max_move_speed;
} else {
	move_speed = current_move_speed;
}


radius -= move_speed;
if(radius <= 0) {
	radius = 0;
	
	if(offset%12 = 0) { // win
		level++;
		game_next_level();
	} else {
		game_to_menu();
		return;
	}	
}

for(var _i = 0; _i < array_length_1d(random_segments); _i++) {
	segments[random_segments[_i], 1] = radius;
}