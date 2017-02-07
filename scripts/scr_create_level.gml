///Fill the buildings array

var temp;
var temp_max;

var grid_size = 5;
var ver_offset;
var hor_offset;
var available_numbers_list = ds_list_create();

var first_column;
var buildings;

var indicator_left; 
var indicator_right; 
var indicator_up; 
var indicator_down; 

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

//Create indicators showing the number of visible buildings
for (var i = 0; i < grid_size; i++) { 
    temp = 0;
    temp_max = 0;
    for (var j = 0; j < grid_size; j++) {
        if (buildings[i, j] > temp_max) {
            temp_max = buildings[i, j];
            temp++;
        }
    }
    indicator_up[i] = temp;
}

for (var i = 0; i < grid_size; i++) { 
    temp = 0;
    temp_max = 0;
    for (var j = grid_size-1; j >= 0; j--) {
        if (buildings[i, j] > temp_max) {
            temp_max = buildings[i, j];
            temp++;
        }
    }
    indicator_down[i] = temp;
}

for (var j = 0; j < grid_size; j++) { 
    temp = 0;
    temp_max = 0;
    for (var i = 0; i < grid_size; i++) {
        if (buildings[i, j] > temp_max) {
            temp_max = buildings[i, j];
            temp++;
        }
    }
    indicator_left[j] = temp;
}

for (var j = 0; j < grid_size; j++) { 
    temp = 0;
    temp_max = 0;
    for (var i = grid_size-1; i >= 0; i--) {
        if (buildings[i, j] > temp_max) {
            temp_max = buildings[i, j];
            temp++;
        }
    }
    indicator_right[j] = temp;
}


show_debug_message("Left indicator (from up to down):");
show_debug_message(indicator_left);
show_debug_message("Right indicator (from up to down):");
show_debug_message(indicator_right);
show_debug_message("Up indicator (from left to right):");
show_debug_message(indicator_up);
show_debug_message("Down indicator (from left to right):");
show_debug_message(indicator_down);



