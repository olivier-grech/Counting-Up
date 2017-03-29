/// Mélange un tableau

//argument0: the array to shuffle
//argument1: the size of the array

var i;
var j;

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

return argument0;
