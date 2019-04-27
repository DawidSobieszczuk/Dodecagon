///@param array
///@param x
///@param y

var _array = argument0;
var _x = argument1;
var _y = argument2;

var _height = array_height_2d(_array);

while(_x < 0) {
	_x += _height;
}
_x =  _x % _height;	


var _length = array_length_2d(_array, _x);

while(_x < 0) {
	_y += _length;
}
_y = _y % _length;


return _array[_x, _y];