///scr_object_inside_object(object_1,object_2,use_mask)
var arg_object_1 = argument0;
var arg_object_2 = argument1;
var arg_use_mask = argument2;

var object_inside_object = false;

var sprite_1_left_offset = arg_object_1.sprite_xoffset;
var sprite_1_right_offset = arg_object_1.sprite_width-sprite_1_left_offset;
var sprite_1_up_offset = arg_object_1.sprite_yoffset;
var sprite_1_down_offset = arg_object_1.sprite_height-sprite_1_up_offset;
var object_1_left_border_x = arg_object_1.x-sprite_1_left_offset;
var object_1_right_border_x = arg_object_1.x+sprite_1_right_offset;
var object_1_up_border_y = arg_object_1.y-sprite_1_up_offset;
var object_1_down_border_y = arg_object_1.y+sprite_1_down_offset;
if(arg_use_mask){
    var sprite_1_left_mask_offset = sprite_get_bbox_left(arg_object_1.sprite_index);
    var sprite_1_right_mask_offset = arg_object_1.sprite_width-sprite_get_bbox_right(arg_object_1.sprite_index);
    var sprite_1_up_mask_offset = sprite_get_bbox_top(arg_object_1.sprite_index);
    var sprite_1_down_mask_offset = arg_object_1.sprite_height-sprite_get_bbox_bottom(arg_object_1.sprite_index);
    object_1_left_border_x += sprite_1_left_mask_offset;
    object_1_right_border_x -= sprite_1_right_mask_offset;
    object_1_up_border_y += sprite_1_up_mask_offset;
    object_1_down_border_y -= sprite_1_down_mask_offset;
}

var sprite_2_left_offset = arg_object_2.sprite_xoffset;
var sprite_2_right_offset = arg_object_2.sprite_width-sprite_2_left_offset;
var sprite_2_up_offset = arg_object_2.sprite_yoffset;
var sprite_2_down_offset = arg_object_2.sprite_height-sprite_2_up_offset;
var object_2_left_border_x = arg_object_2.x-sprite_2_left_offset;
var object_2_right_border_x = arg_object_2.x+sprite_2_right_offset;
var object_2_up_border_y = arg_object_2.y-sprite_2_up_offset;
var object_2_down_border_y = arg_object_2.y+sprite_2_down_offset;
if(arg_use_mask){
    var sprite_2_left_mask_offset = sprite_get_bbox_left(arg_object_2.sprite_index);
    var sprite_2_right_mask_offset = arg_object_2.sprite_width-sprite_get_bbox_right(arg_object_2.sprite_index);
    var sprite_2_up_mask_offset = sprite_get_bbox_top(arg_object_2.sprite_index);
    var sprite_2_down_mask_offset = arg_object_2.sprite_height-sprite_get_bbox_bottom(arg_object_2.sprite_index);
    object_2_left_border_x += sprite_2_left_mask_offset;
    object_2_right_border_x -= sprite_2_right_mask_offset;
    object_2_up_border_y += sprite_2_up_mask_offset;
    object_2_down_border_y -= sprite_2_down_mask_offset;
}

if(object_1_left_border_x >= object_2_left_border_x and object_1_right_border_x <= object_2_right_border_x){
    if(object_1_up_border_y >= object_2_up_border_y and object_1_down_border_y <= object_2_down_border_y){
        object_inside_object = true;
    }
}

return object_inside_object;
