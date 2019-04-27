///@param x1
///@param y1
///@param x2
///@param y2
///@param x3
///@param y3
///@param x4
///@param y4

///@param col1
///@param col2
///@param col3
///@param col4


var _x1 = argument0;
var _y1 = argument1;
var _x2 = argument2;
var _y2 = argument3;
var _x3 = argument4;
var _y3 = argument5;
var _x4 = argument6;
var _y4 = argument7;

var _col1 = argument8;
var _col2 = argument9;
var _col3 = argument10;
var _col4 = argument11;


draw_primitive_begin(pr_trianglelist);

draw_vertex_color(_x1, _y1, _col1, 1);
draw_vertex_color(_x2, _y2, _col2, 1);
draw_vertex_color(_x3, _y3, _col3, 1);

draw_vertex_color(_x3, _y3, _col3, 1);
draw_vertex_color(_x2, _y2, _col2, 1);
draw_vertex_color(_x4, _y4, _col4, 1);

draw_primitive_end();