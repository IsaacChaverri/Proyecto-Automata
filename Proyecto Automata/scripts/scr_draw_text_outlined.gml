///scr_draw_text_outlined(x,y,text,offset,outer_color,inner_color)
var arg_x = argument0;
var arg_y = argument1;
var arg_text = argument2;
var arg_offset = argument3;
var arg_outer_color = argument4;
var arg_inner_color = argument5;

var original_color = draw_get_color();

draw_set_color(arg_outer_color);
draw_text(arg_x+arg_offset,arg_y,arg_text);
draw_text(arg_x-arg_offset,arg_y,arg_text);
draw_text(arg_x,arg_y+arg_offset,arg_text);
draw_text(arg_x,arg_y-arg_offset,arg_text);

draw_text(arg_x-arg_offset,arg_y-arg_offset,arg_text);
draw_text(arg_x-arg_offset,arg_y+arg_offset,arg_text);
draw_text(arg_x+arg_offset,arg_y-arg_offset,arg_text);
draw_text(arg_x+arg_offset,arg_y+arg_offset,arg_text);

draw_set_color(arg_inner_color);
draw_text(arg_x,arg_y,arg_text);

draw_set_color(original_color);
