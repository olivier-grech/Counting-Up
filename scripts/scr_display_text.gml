/// Affiche du texte dans un format prédéfini

//argument0: the string to display


var horizontal_offset = surface_get_width(application_surface)*0.05;
var vertical_offset =surface_get_height(application_surface)*0.05;
draw_set_halign(fa_center);

//draw_text_ext(room_width*0.5, vertical_offset, argument0, 65, room_width-(horizontal_offset*2));
draw_text_ext_transformed(surface_get_width(application_surface)*0.5, vertical_offset, argument0, 30, surface_get_width(application_surface)-(horizontal_offset*2), 1, 1, 0);

