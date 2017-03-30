var manager = instance_find(obj_manager, 0);

buttons[0] = instance_create(room_width /2, (room_height/2)+(3*manager.gap_button), obj_button_home);


for (var i = 0; i < 1; i++)
{
   buttons[i].image_xscale *= manager.small_button_stretch;
   buttons[i].image_yscale *= manager.small_button_stretch;
}

scr_display_text("Made by#Olivier Grech##With music from#StumpyStrust");
