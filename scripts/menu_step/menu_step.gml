if(key_right) 
	menu_item_select = 0;

if(key_left) 
	menu_item_select = 1;

if(key_action_timer <= key_action_delay) key_action_timer++
if(key_action && key_action_timer > key_action_delay) {
	switch(menu_item_select) {
		case 0: menu_to_game(); break;
		case 1: game_end();
	}
	key_action = false;
}