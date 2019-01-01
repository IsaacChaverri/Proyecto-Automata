///scr_move_object(object,x_destination,y_destination,speed)
var arg_object = argument0;
var arg_x_destination = argument1;
var arg_y_destination = argument2;
var arg_speed = argument3;

var x_speed = arg_speed;
var y_speed = arg_speed;

var horizontal_difference = abs(arg_x_destination-arg_object.x);
var vertical_difference = abs(arg_y_destination-arg_object.y);

if(horizontal_difference < vertical_difference){
    if(vertical_difference != 0){
        x_speed *= (horizontal_difference/vertical_difference);
    }
}else if(vertical_difference < horizontal_difference){
    if(horizontal_difference != 0){
        y_speed *= (vertical_difference/horizontal_difference);
    }
}

arg_object.x = scr_approach(arg_object.x,arg_x_destination,x_speed);
arg_object.y = scr_approach(arg_object.y,arg_y_destination,y_speed);
