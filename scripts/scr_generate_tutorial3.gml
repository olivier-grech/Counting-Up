scr_generate_tutorial1();

var manager = instance_find(obj_manager, 0);

add_buttons[0] = instance_create((room_width/2) - 2*(manager.small_button_width*manager.small_button_stretch + manager.small_button_gap), (room_height/2)- manager.small_button_height*manager.small_button_stretch - manager.small_button_gap, obj_arrow);
add_buttons[1] = instance_create((room_width/2) - 3*(manager.small_button_width*manager.small_button_stretch + manager.small_button_gap), (room_height/2)- manager.small_button_height*manager.small_button_stretch - manager.small_button_gap, obj_indicator1_tutorial);

for (var i = 0; i < array_length_1d(add_buttons); i++)
{
   add_buttons[i].image_xscale *= manager.small_button_stretch;
   add_buttons[i].image_yscale *= manager.small_button_stretch;
}


