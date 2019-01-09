///scr_wave(from, to, duration, offset)
var arg_from = argument0;
var arg_to = argument1;
var arg_duration = argument2;
var arg_offset = argument3;

var half = (arg_to - arg_from) * 0.5;
return arg_from + half + sin((((current_time * 0.001) + arg_duration * arg_offset) / arg_duration) * (pi*2)) * half;
