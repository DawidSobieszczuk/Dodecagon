state = STATES.MENU;
menu_item_select = 0;
offset = 0;
key_action_timer = 0;
segments_reset();

if(current_score > high_score) {
	high_score = current_score;
	ini_open("savedata.ini");
	ini_write_real("SAVE", "high_score", high_score);
	ini_close();
}