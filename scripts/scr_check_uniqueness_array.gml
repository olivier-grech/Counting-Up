/// Check the uniqueness of elements in each row and column of the array argument0

var _grid_size = array_height_2d(argument0);
var _sum = 0;
var _temp1 = 0;
var _temp2 = 0;
var _uniqueness = true;

for (var i = _grid_size; i > 0; i--)
{
    _sum = _sum + i;
}

for (var i = 0; i < _grid_size; i++)
{
    _temp1 = 0;
    _temp2 = 0;
    for (var j = 0; j < _grid_size; j++)
    {
        _temp1 = _temp1 + argument0[i, j];
        _temp2 = _temp2 + argument0[j, i];
    }
    
    if ((_temp1 != _sum) || (_temp2 != _sum))
    {
        _uniqueness = false;
    }
   
}

return _uniqueness;
