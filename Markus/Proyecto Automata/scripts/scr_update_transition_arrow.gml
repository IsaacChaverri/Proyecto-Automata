///scr_update_transition_arrow()
//Update Arrow Positions
arrow_start_x = state_1.x;
arrow_start_y = state_1.y;
arrow_end_x = state_2.x;
arrow_end_y = state_2.y;

//Pre-Calculate Data
var x_distance = abs(arrow_end_x-arrow_start_x);
var y_distance = abs(arrow_end_y-arrow_start_y);
var x_difference_sign = sign(arrow_end_x-arrow_start_x);
var y_difference_sign = sign(arrow_end_y-arrow_start_y);
var x_h_angle = radtodeg(arctan(y_distance/x_distance));
if(x_difference_sign < 0){
    x_h_angle = 90+(90-x_h_angle);
}
if(y_difference_sign > 0){
    x_h_angle = -x_h_angle+360;
}
if(x_distance == 0){
    if(y_difference_sign < 0){
        x_h_angle = 90;
    }else{
        x_h_angle = 270;
    }
}
var radius_offset = state_1.radius;
var start_offset_angle = x_h_angle;
var end_offset_angle = x_h_angle+180;
if(transition_is_double){
    start_offset_angle = x_h_angle+45;
    end_offset_angle = x_h_angle+135;
}

//Adjust Arrows
var start_x_offset = lengthdir_x(radius_offset,start_offset_angle);
var start_y_offset = lengthdir_y(radius_offset,start_offset_angle);
arrow_start_x += start_x_offset;
arrow_start_y += start_y_offset;
var end_x_offset = lengthdir_x(radius_offset,end_offset_angle);
var end_y_offset = lengthdir_y(radius_offset,end_offset_angle);
arrow_end_x += end_x_offset;
arrow_end_y += end_y_offset;
