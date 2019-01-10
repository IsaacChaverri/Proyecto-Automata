///scr_return_to_last_state()
ds_list_delete(state_queue,ds_list_size(state_queue)-1);
state = ds_list_find_value(state_queue,ds_list_size(state_queue)-1);
