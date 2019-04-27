random_segments = [];
offset = irandom_range(2,10);
radius = 1;

random_segments = get_random_segments(irandom_range(4,9));

segments_reset();
for(var _i = 0; _i < array_length_1d(random_segments); _i++) {
	segments[random_segments[_i], 1] = radius;
}

//reset timers
key_action_timer = 0;
key_timer = key_delay;