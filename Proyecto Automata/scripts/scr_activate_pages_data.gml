///scr_activate_pages_data(activate)
var arg_activate = argument0;

var pages_data_list_size = ds_list_size(PAGES_DATA_LIST);
for(var i=0;i<pages_data_list_size;i++){
    var temp_page_data = ds_list_find_value(PAGES_DATA_LIST,i);
    with(temp_page_data){
        levels_data_list_size = ds_list_size(levels_data_list);
        for(var j=0;j<levels_data_list_size;j++){
            var temp_level_data = ds_list_find_value(levels_data_list,j);
            if(arg_activate){
                instance_activate_object(temp_level_data);
            }else{
                instance_deactivate_object(temp_level_data);
            }
        }
    }
    if(arg_activate){
        instance_activate_object(temp_page_data);
    }else{
        instance_deactivate_object(temp_page_data);
    }
}
