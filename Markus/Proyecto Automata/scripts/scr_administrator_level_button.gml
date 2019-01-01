///scr_administrator_level_button
with(button){
    if(not selected){
        with(obj_administrator_level_button){
            scr_deselect_administrator_button();
        }
        selected = true;
        var level_button_radius = sprite_width/2;
        //Create Play Button
        var play_button_angle = 33;
        var play_button_radius = level_button_radius+(level_button_radius/2);
        var play_button_x_offset = lengthdir_x(play_button_radius,play_button_angle);
        var play_button_y_offset = lengthdir_y(play_button_radius,play_button_angle);
        var play_button_x = x+play_button_x_offset;
        var play_button_y = y+play_button_y_offset;
        var play_button_depth = depth-1;
        play_button = scr_instance_create_depth(play_button_x,play_button_y,play_button_depth,obj_administrator_menu_button);
        with(play_button){
            administrator_button = other.id;
            sprite_index = spr_administrator_play_button;
            script = scr_administrator_play_button;
        }
        //Create Edit Button
        var edit_button_angle = 0;
        var edit_button_radius = level_button_radius+(level_button_radius/2);
        var edit_button_x_offset = lengthdir_x(edit_button_radius,edit_button_angle);
        var edit_button_y_offset = lengthdir_y(edit_button_radius,edit_button_angle);
        var edit_button_x = x+edit_button_x_offset;
        var edit_button_y = y+edit_button_y_offset;
        var edit_button_depth = depth-1;
        edit_button = scr_instance_create_depth(edit_button_x,edit_button_y,edit_button_depth,obj_administrator_menu_button);
        with(edit_button){
            administrator_button = other.id;
            sprite_index = spr_administrator_edit_button;
            script = scr_administrator_edit_button;
        }
        //Create Delete Button
        var delete_button_angle = -33;
        var delete_button_radius = level_button_radius+(level_button_radius/2);
        var delete_button_x_offset = lengthdir_x(delete_button_radius,delete_button_angle);
        var delete_button_y_offset = lengthdir_y(delete_button_radius,delete_button_angle);
        var delete_button_x = x+delete_button_x_offset;
        var delete_button_y = y+delete_button_y_offset;
        var delete_button_depth = depth-1;
        delete_button = scr_instance_create_depth(delete_button_x,delete_button_y,delete_button_depth,obj_administrator_menu_button);
        with(delete_button){
            administrator_button = other.id;
            sprite_index = spr_administrator_delete_button;
            script = scr_administrator_delete_button;
        }
    }else{
        scr_deselect_administrator_button();
    }
}
instance_destroy();
