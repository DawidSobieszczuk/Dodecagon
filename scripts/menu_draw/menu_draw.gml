draw_set_valign(fa_center);
draw_set_halign(fa_middle);


draw_set_font(score_font);
draw_set_color(c_dkgray);

if(!display_last_score)
	draw_text(x,y,"HIGH SCORE\n" + string(high_score));
else
	draw_text(x,y,"LAST SCORE\n" + string(current_score));

draw_set_font(main_font);

if(menu_item_select==0)
	draw_set_color(merge_color(colors[0], colors[1], .5));
else 
	draw_set_color(c_dkgray);

draw_text(x + menu_radius, y, menu_items[0]);


if(menu_item_select==1)
	draw_set_color(merge_color(colors[6], colors[7], .5));
else
	draw_set_color(c_dkgray);
	
draw_text(x - menu_radius, y, menu_items[1]);
