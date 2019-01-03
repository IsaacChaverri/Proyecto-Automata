///scr_win_window_next_button()
var current_page_data_levels_data_list = CURRENT_PAGE_DATA.levels_data_list;
var current_level_data_index = ds_list_find_index(current_page_data_levels_data_list,CURRENT_LEVEL_DATA);
var next_level_data_index = current_level_data_index+1;
var next_level_exists = false;
var current_page_data_levels_data_list_size = ds_list_size(current_page_data_levels_data_list);
if(next_level_data_index < current_page_data_levels_data_list_size){
    next_level_exists = true;
}
if(next_level_exists){
    //Reactivate Instances
    scr_reactivate_all();
    //Find next level data
    var next_level_data = ds_list_find_value(current_page_data_levels_data_list,next_level_data_index);
    CURRENT_LEVEL_DATA = next_level_data;
    scr_room_goto(rm_gameplay);
}else{
    scr_win_window_exit_button()
}
