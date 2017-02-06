///Fill the buildings array

var buildings;
var line;
var grid_size;
var ver_offset;
var hor_offset;

//Create the buildings array
for (var i = 0; i < grid_size; i++)
{
    for (var j = 0; j < grid_size; j++)
    {
        buildings[i, j] = 0;
    }
}

//Create the first column
for (var i = 0; i < grid_size; i++)
{
    buildings[1, i] = i+1; //Numbers from 1 to size
}

//Create the buildings buttons
line = scr_shuffle_array(line, grid_size);

show_debug_message(line);
