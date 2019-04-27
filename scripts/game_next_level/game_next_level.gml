current_move_speed = level * 0.00007 + 0.002
current_move_speed = min(current_move_speed, max_move_speed);
move_speed = current_move_speed;

current_score += ceil(100 + power(level, 2) / 2);

game_level_start();