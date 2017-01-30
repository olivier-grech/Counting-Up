///Affiche le texte sur les boutons de niveaux

var level = 0;
var roomname;
var message;

for (var i=0; i<4; i++)
{
    for (var j=0; j<4; j++)
    {
        level++;
        roomname = "room_level" + string(level);
        ini_open("savedata.ini");
        message = ini_read_real("levels", roomname, 0);
        message = string(message) + string(level)
        draw_text(68+j*72, 48+i*72, message);
    }
}
