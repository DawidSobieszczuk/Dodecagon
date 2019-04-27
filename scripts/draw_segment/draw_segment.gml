///@param angle 
///@param radius 
///@param height 
///@param col1 
///@param col2 

var angle = argument0;
var radius = argument1;
var height = argument2;
var col1 = argument3;
var col2 = argument4;

var angle_next = angle + pi / 6;
var radiusH = radius - height;

var x1 = x + cos(angle)*radius;
var y1 = y + sin(angle)*radius;
var x2 = x + cos(angle_next)*radius;
var y2 = y + sin(angle_next)*radius;
var x3 = x + cos(angle)*radiusH;
var y3 = y + sin(angle)*radiusH;
var x4 = x + cos(angle_next)*radiusH;
var y4 = y + sin(angle_next)*radiusH;


draw_quadrangle_color(x1,y1,x2,y2,x3,y3,x4,y4, col1, col2, col1, col2);