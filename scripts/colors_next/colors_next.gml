var hue_step = 255/12 + 0.5;
for(var i = 0; i < 12; i++) {
	color_hue += hue_step;
	if(color_hue >= 255) color_hue -= 255;
	
	colors[i] = make_color_hsv(color_hue, color_saturation, color_value);
}