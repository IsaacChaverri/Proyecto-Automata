///scr_approach(a,b,speed)
var arg_a = argument0;
var arg_b = argument1;
var arg_speed = argument2;

if(arg_a < arg_b){
    arg_a += arg_speed;
    if(arg_a > arg_b){
        return arg_b;
    }
}else{
    arg_a -= arg_speed;
    if(arg_a < arg_b){
        return arg_b;
    }
}

return arg_a;
