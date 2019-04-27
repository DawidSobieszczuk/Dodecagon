state = STATES.GAMEOVER;
segments_reset();
if(current_score > high_score) {
	high_score = current_score;
	ini_open("savedata.ini");
	ini_write_real("SAVE", "high_score", high_score);
	ini_close();
}