display_last_score = !display_last_score;

if(current_score <= 0) {
	display_last_score = false;
}

alarm[1] = room_speed * 4.5;