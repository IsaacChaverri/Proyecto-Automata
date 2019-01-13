///scr_flash(time,color,alpha,depth)
var arg_time = argument0;
var arg_color = argument1;
var arg_alpha = argument2;
var arg_depth = argument3;

var flash_dummy = scr_instance_create_depth(0,0,arg_depth,obj_dummy);
with(flash_dummy){
    scr_initialize_state();
    step_script = scr_flash_dummy;
    draw_script = scr_flash_dummy_draw;
    time = arg_time;
    color = arg_color;
    alpha = arg_alpha;
}

return flash_dummy;
