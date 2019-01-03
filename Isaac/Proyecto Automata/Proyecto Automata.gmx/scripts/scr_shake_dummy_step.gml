///scr_shake_dummy_step()
switch(state.counter){
    case 0:
        object_list_size = ds_list_size(object_list);
        for(var i=0;i<object_list_size;i++){
            var temp_object = ds_list_find_value(object_list,i);
            with(temp_object){
                _original_x = x;
                _original_y = y;
            }
        }
        shake_direction = 1;
        shake_counter = 0;
        state.counter++;
        break;
    case 1:
        for(var i=0;i<object_list_size;i++){
            var temp_object = ds_list_find_value(object_list,i);
            if(horizontal_radius != 0){
                temp_object.x = temp_object._original_x+(horizontal_radius*shake_direction);
            }
            if(vertical_radius != 0){
                temp_object.y = temp_object._original_y+(vertical_radius*shake_direction);
            }
        }
        shake_direction *= -1;
        if(shake_counter >= shake_time){
            state.counter++;
        }else{
            shake_counter++;
        }
        break;
    case 2:
        for(var i=0;i<object_list_size;i++){
            var temp_object = ds_list_find_value(object_list,i);
            if(horizontal_radius != 0){
                temp_object.x = temp_object._original_x;
            }
            if(vertical_radius != 0){
                temp_object.y = temp_object._original_y;
            }
        }
        instance_destroy();
        break;
}
