///scr_draw_box(x,y,width,height,outer_color,inner_color,border_weight,centered,alpha,rounded)
var arg_x = argument0;
var arg_y = argument1;
var arg_width = argument2;
var arg_height = argument3;
var arg_outer_color = argument4;
var arg_inner_color = argument5;
var arg_border_weight = argument6;
var arg_centered = argument7;
var arg_alpha = argument8;
var arg_rounded = argument9;

var min_rectangle_dimension = min(arg_width,arg_height);
var round_rect_radius = min_rectangle_dimension/2;

var original_alpha = draw_get_alpha();
draw_set_alpha(arg_alpha);

if(arg_centered){
    if(arg_outer_color != noone){
        draw_set_color(arg_outer_color);
        if(arg_rounded){
            draw_roundrect_ext(arg_x-(arg_width/2),arg_y-(arg_height/2),arg_x+(arg_width/2),arg_y+(arg_height/2),round_rect_radius,round_rect_radius,false);
        }else{
            draw_rectangle(arg_x-(arg_width/2),arg_y-(arg_height/2),arg_x+(arg_width/2),arg_y+(arg_height/2),false);
        }
    }
    if(arg_inner_color != noone){
        draw_set_color(arg_inner_color);
        if(arg_rounded){
            draw_roundrect_ext(arg_x-(arg_width/2)+arg_border_weight,arg_y-(arg_height/2)+arg_border_weight,arg_x+(arg_width/2)-arg_border_weight,arg_y+(arg_height/2)-arg_border_weight,round_rect_radius,round_rect_radius,false);
        }else{
            draw_rectangle(arg_x-(arg_width/2)+arg_border_weight,arg_y-(arg_height/2)+arg_border_weight,arg_x+(arg_width/2)-arg_border_weight,arg_y+(arg_height/2)-arg_border_weight,false);
        }
    }
}else{
    if(arg_outer_color != noone){
        draw_set_color(arg_outer_color);
        if(arg_rounded){
            draw_roundrect_ext(arg_x,arg_y,arg_x+arg_width,arg_y+arg_height,round_rect_radius,round_rect_radius,false);
        }else{
            draw_rectangle(arg_x,arg_y,arg_x+arg_width,arg_y+arg_height,false);
        }
    }
    if(arg_inner_color != noone){
        draw_set_color(arg_inner_color);
        if(arg_rounded){
            draw_roundrect_ext(arg_x+arg_border_weight,arg_y+arg_border_weight,arg_x+arg_width-arg_border_weight,arg_y+arg_height-arg_border_weight,round_rect_radius,round_rect_radius,false);
        }else{
            draw_rectangle(arg_x+arg_border_weight,arg_y+arg_border_weight,arg_x+arg_width-arg_border_weight,arg_y+arg_height-arg_border_weight,false);
        }
    }
}

draw_set_alpha(original_alpha);
