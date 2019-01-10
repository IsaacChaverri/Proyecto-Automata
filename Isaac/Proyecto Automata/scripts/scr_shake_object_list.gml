///scr_shake_object_list(object_list,horizontal_radius,vertical_radius,shake_time)
var arg_object_list = argument0;
var arg_horizontal_radius = argument1;
var arg_vertical_radius = argument2;
var arg_shake_time = argument3;

var shake_dummy = scr_instance_create_depth(0,0,0,obj_dummy);
with(shake_dummy){
    scr_initialize_state();
    object_list = arg_object_list;
    horizontal_radius = arg_horizontal_radius;
    vertical_radius = arg_vertical_radius;
    shake_time = arg_shake_time;
    step_script = scr_shake_dummy_step;
}

return shake_dummy;
