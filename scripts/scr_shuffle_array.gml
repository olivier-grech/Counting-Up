///Shuffling array function

//argument0: the array to shuffle
//argument1: the size of the array

var i;
var j;

show_debug_message("----------");
show_debug_message("Original array: ");
show_debug_message(argument0);
show_debug_message("Size: ");
show_debug_message(argument1);

for (i = 0; i < argument1; i++)
{
    j = irandom_range(i, argument1 - 1);
    
    if (i != j)
    {
        k = argument0[i];
        argument0[i] = argument0[j];
        argument0[j] = k;
    }
}


show_debug_message("Result array: ");
show_debug_message(argument0);
show_debug_message("----------");

return argument0;
