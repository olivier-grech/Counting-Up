var manager = instance_find(obj_manager, 0);

buttons[0] = instance_create((room_width/2) - manager.small_button_width*manager.small_button_stretch - manager.small_button_gap, (room_height/2), obj_building1_tutorial);
buttons[1] = instance_create((room_width/2), (room_height/2), obj_building1_tutorial);
buttons[2] = instance_create((room_width/2) + manager.small_button_width*manager.small_button_stretch + manager.small_button_gap, (room_height/2), obj_building1_tutorial);





for (var i = 0; i < array_length_1d(buttons); i++)
{
   buttons[i].image_xscale *= manager.small_button_stretch;
   buttons[i].image_yscale *= manager.small_button_stretch;
}

button_home = instance_create(room_width /2, room_height-manager.large_button_gap, obj_button_home);

button_home.image_xscale *= manager.small_button_stretch;
button_home.image_yscale *= manager.small_button_stretch;
