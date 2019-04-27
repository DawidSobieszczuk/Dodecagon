///@param number

var _array = [];

var _list = ds_list_create();
ds_list_add(_list, 0,1,2,3,4,5,6,7,8,9,10,11);
ds_list_shuffle(_list);

var _range = argument0;
for(var _i = 0; _i < _range; _i++) {
	_array[_i] = _list[| _i];
}

ds_list_destroy(_list);

return _array;