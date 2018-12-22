/// scr_wave_approach(a,b,current_value,max_speed,min_speed,start_slow)
var arg_a = argument0;
var arg_b = argument1;
var arg_current_value = argument2;
var arg_max_speed = argument3;
var arg_min_speed = argument4;
var arg_start_slow = argument5;

if(arg_a != arg_b){
    var speed_percentage = (arg_current_value-arg_a)/(arg_b-arg_a);
    if(not arg_start_slow){
        speed_percentage = 1-speed_percentage;
    }
    var current_speed = ((arg_max_speed-arg_min_speed)*speed_percentage)+arg_min_speed;
    
    if(arg_current_value < arg_b){
        arg_current_value += current_speed;
        if(arg_current_value > arg_b){
            arg_current_value = arg_b;
        }
    }else{
        arg_current_value -= current_speed;
        if(arg_current_value < arg_b){
            arg_current_value = arg_b;
        }
    }
}else{
    arg_current_value = arg_b;
}

return arg_current_value;
