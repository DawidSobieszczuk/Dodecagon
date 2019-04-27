#macro SEGMENT_HEIGHT 15

randomize();
enum STATES { MENU, GAME, GAMEOVER }
state = STATES.MENU;

var angle = degtorad(345);
segments = [];

for(var i = 0; i < 12; i++) {
	segments[i, 0] = angle;
	segments[i, 1] = 0;
	
	angle += pi / 6;
}
current_score = 0;
ini_open("savedata.ini");
high_score = ini_read_real("SAVE", "high_score", 0);
ini_close();

max_radius = 256;
min_radius = max_radius*.3;

color_hue = 0;
color_saturation = 200;
color_value = 200;

colors_next();
alarm[0] = 5;

display_last_score = false;
alarm[1] = 4.5*room_speed;

menu_init();
game_init();