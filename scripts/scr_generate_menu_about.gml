var manager = instance_find(obj_manager, 0);

button_home = instance_create(room_width /2, (room_height/2)+(3*manager.gap_button), obj_button_home);

button_home.image_xscale *= manager.small_button_stretch;
button_home.image_yscale *= manager.small_button_stretch;

scr_display_text("Made by#Olivier Grech##With music from#StumpyStrust");
