/// Affiche du texte dans un format prédéfini

//argument0: the string to display

var horizontal_offset = room_width*0.1;
var vertical_offset = room_height*0.05;
draw_set_halign(fa_center);

draw_text_ext(room_width*0.5, vertical_offset, argument0, -1, room_width-(horizontal_offset*2));
