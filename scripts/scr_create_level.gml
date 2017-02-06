///Fill the buildings array

var buildings;
var first_column;
var grid_size = 6;
var ver_offset;
var hor_offset;
var temp;
var available_numbers_list = ds_list_create();


//Create the buildings array
for (var i = 0; i < grid_size; i++) {
    for (var j = 0; j < grid_size; j++) {
        buildings[i, j] = 0;
    }
}

//Create the first column
for (var a = 0; a < grid_size; a++) {
    first_column[a] = a+1; //Numbers from 1 to grid_size
}

first_column = scr_shuffle_array(first_column, grid_size);

for (var a = 0; a < grid_size; a++) {
   buildings[0, a] = first_column[a];
}

//Create available number list
for (var i = 1; i < grid_size; i++) { 
    for (var j = 0; j < grid_size; j++) {
        
        //Generate a list with value from 1 to grid_size
        ds_list_clear(available_numbers_list);
        
        for (var a = 0; a < grid_size; a++) {
            ds_list_add(available_numbers_list, a+1);
        }
        
        for (var a = 0; a < i; a++) {
            temp = ds_list_find_index(available_numbers_list, buildings[a, j]);
            if (temp != -1) {
                ds_list_delete(available_numbers_list, temp);
            }
        }
        
        for (var a = 0; a < j; a++) {
            temp = ds_list_find_index(available_numbers_list, buildings[i, a]);
            if (temp != -1) {
                ds_list_delete(available_numbers_list, temp);
            }
        }
        
        ds_list_shuffle(available_numbers_list);
        if (ds_list_find_value(available_numbers_list, 0) != undefined) {
            buildings[i, j] = ds_list_find_value(available_numbers_list, 0);
        }
        else {
            j = grid_size;
            i--;
        }
        
    }
}

show_debug_message(buildings);


