///scr_level_creation_text_box_update_buttons_y()
var height_difference = height_old-sprite_height;
level_creation_handler.create_button.y -= height_difference;
level_creation_handler.cancel_button.y -= height_difference;
height_old = sprite_height;
