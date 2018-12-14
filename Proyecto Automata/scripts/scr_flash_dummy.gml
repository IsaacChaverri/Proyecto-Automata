///scr_flash_dummy()
switch(state.counter){
    case 0:
        if(state.time < 0){
            state.time = time;
        }else if(state.time == 0){
            instance_destroy();
        }
    break;
}
