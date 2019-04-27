key_down = keyboard_check(ord("S"));
key_up = keyboard_check(ord("W"));

key_left = keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));

key_action = keyboard_check(vk_enter) || keyboard_check(vk_space);
key_back = keyboard_check(vk_escape) || keyboard_check(vk_backspace);

switch(state) {
	case STATES.MENU: menu_step(); break;
	case STATES.GAME: game_step(); break;
}