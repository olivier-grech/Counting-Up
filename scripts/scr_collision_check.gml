//Renvoie true si un objet que le joueur ne peut pas traverser est détecté à (x, y)
{
    var check_x = argument0;
    var check_y = argument1;
    var is_ghost = argument2;
    
    return ( place_meeting(check_x, check_y, obj_wall) 
    || place_meeting(check_x, check_y, obj_lock) 
    || (place_meeting(check_x, check_y, obj_ghost_wall) && !is_ghost) );
}

