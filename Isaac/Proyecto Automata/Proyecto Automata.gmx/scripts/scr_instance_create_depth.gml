///scr_instance_create_depth(x,y,depth,object)
var arg_x = argument0;
var arg_y = argument1;
var arg_depth = argument2;
var arg_object = argument3;

var new_object = instance_create(arg_x,arg_y,arg_object);
with(new_object){
    depth = arg_depth;
}

return new_object;
