///scr_state_counter_wait(time)
var arg_time = round(argument0);
if(state.time < 0){
    state.time = arg_time;
}else if(state.time == 0){
    state.counter++;
}
