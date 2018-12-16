/// scr_fade(destination_alpha,time,color,depth)
var arg_destination_alpha = argument0;
var arg_time = argument1;
var arg_color = argument2;
var arg_depth = argument3;

if(not instance_exists(obj_fade)){
	instance_create_depth(0,0,0,obj_fade);
}
with(obj_fade){
	depth = arg_depth;
	destination_alpha = arg_destination_alpha;
	fade_time = arg_time;
	if(fade_time == 0){
		fade_time = 1;
	}
	color = arg_color;
}
