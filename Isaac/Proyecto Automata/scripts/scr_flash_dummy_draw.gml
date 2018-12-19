///scr_flash_dummy_draw()
var original_alpha = draw_get_alpha();
var original_color = draw_get_color();
draw_set_alpha(alpha);
draw_set_color(color);
draw_rectangle(0,0,room_width,room_height,false);
draw_set_alpha(original_alpha);
draw_set_color(original_color);
