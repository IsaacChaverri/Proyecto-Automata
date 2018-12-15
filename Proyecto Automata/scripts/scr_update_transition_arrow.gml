///scr_update_transition_arrow()
//Update Arrow Positions
arrow_start_x = state_1.x;
arrow_start_y = state_1.y;
arrow_end_x = state_2.x;
arrow_end_y = state_2.y;

//Adjust Arrow End
var x_distance = abs(arrow_end_x-arrow_start_x);
var y_distance = abs(arrow_end_y-arrow_start_y);
var angle = arctan(y_distance/x_distance);
var hypothenuse = state_2.radius;
var x_offset = cos(angle)*hypothenuse;
var y_offset = sin(angle)*hypothenuse;
var x_difference_sign = sign(arrow_end_x-arrow_start_x);
var y_difference_sign = sign(arrow_end_y-arrow_start_y);
x_offset *= x_difference_sign;
y_offset *= y_difference_sign;
arrow_end_x -= x_offset;
arrow_end_y -= y_offset;
