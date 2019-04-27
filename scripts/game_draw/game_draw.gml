draw_set_valign(fa_center);
draw_set_halign(fa_middle);

draw_set_font(score_font);
draw_set_color(c_dkgray);

draw_text(x,y,"SCORE\n" + string(current_score));

//draw_set_color(c_white);
draw_text(x+min_radius+50, y-15, "↑W");
draw_text(x+min_radius+50, y+15, "↓S");
