var pi_over_6 = pi / 6;
var start_angle = degtorad(345)
var angle = start_angle;

draw_clear(c_black);
// Bacground
draw_sprite(bg, 0, x, y);
draw_set_color(c_dkgray);
repeat(12) {
	draw_line(x+cos(angle)*min_radius, y+sin(angle)*min_radius, x+cos(angle)*max_radius, y+sin(angle)*max_radius);
	
	var prev_angle = angle;
	angle += pi_over_6;

	draw_line(x+cos(prev_angle)*max_radius, y+sin(prev_angle)*max_radius, x+cos(angle)*max_radius, y+sin(angle)*max_radius);	
	
	draw_line(x+cos(prev_angle)*min_radius, y+sin(prev_angle)*min_radius, x+cos(angle)*min_radius, y+sin(angle)*min_radius);
}

for(var i = 0; i < 12; i++) {
	if(segments[i,1] > 0) {
		draw_segment(
			array_wrap_2d(segments, i+offset, 0), 
			remap(segments[i,1], 0, 1, min_radius+SEGMENT_HEIGHT/2, max_radius+SEGMENT_HEIGHT/2), 
			SEGMENT_HEIGHT, 
			colors[i], 
			array_wrap_1d(colors, i+1)
		);
		
	} else {
		draw_segment(
			segments[i,0], 
			remap(segments[i,1], 0, 1, min_radius+SEGMENT_HEIGHT/2, max_radius+SEGMENT_HEIGHT/2), 
			SEGMENT_HEIGHT, 
			colors[i], 
			array_wrap_1d(colors, i+1)
		);
	}
}

switch(state) {
	case STATES.MENU: menu_draw(); break;
	case STATES.GAME: game_draw(); break;
}