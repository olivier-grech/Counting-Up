///Fill the buildings array

var buildings;
var line;
var size = 5;

for (var i = 0; i < size; i++)
{
    for (var j = 0; j < size; j++)
    {
        buildings[i, j] = 0;
    }
    
    line[i] = i+1; //Contient les chiffres de 1 à 5
}

line = scr_shuffle_array(line, size);

show_debug_message(line);
