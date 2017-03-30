var manager = instance_find(obj_manager, 0);

buttons[0] = instance_create(room_width /2, (room_height/2)-(3*manager.large_button_gap), obj_button_play);
buttons[1] = instance_create(room_width /2, (room_height/2)-(1*manager.large_button_gap), obj_button_settings);
buttons[2] = instance_create(room_width /2, (room_height/2)+(1*manager.large_button_gap), obj_button_about);
buttons[3] = instance_create(room_width /2, (room_height/2)+(3*manager.large_button_gap), obj_button_quit);

for (var i = 0; i < array_length_1d(buttons); i++)
{
   buttons[i].image_xscale *= manager.large_button_stretch;
   buttons[i].image_yscale *= manager.large_button_stretch;
}
