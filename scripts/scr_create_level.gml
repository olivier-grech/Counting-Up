///Fill the buildings array

var buildings;
var first_column;
var grid_size;
var ver_offset;
var hor_offset;
var available_numbers_list = ds_list_create();


//Create the buildings array
for (var i = 0; i < grid_size; i++) {
    for (var j = 0; j < grid_size; j++) {
        buildings[i, j] = 0;
    }
}

//Create the first column
for (var i = 0; i < grid_size; i++) {
    first_column[i] = i+1; //Numbers from 1 to grid_size
}

first_column = scr_shuffle_array(first_column, grid_size);

for (var i = 0; i < grid_size; i++) {
   buildings[1, i] = first_column[i];
}

//Create available number list
for (var i = 1; i < grid_size; i++) { 
    for (var j = 0; j < grid_size; j++) {
        
        ds_list_clear(available_numbers_list);
        
        for (var a = 0; a < i; a++) {
            ds_list_add(available_numbers_list, a);
        }
        //buildings[i, j];
        
    }
}
