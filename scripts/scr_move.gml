//Déplace un objet dans la direction indiquée jusqu'à ce qu'il rencontre un obstacle
/*
{
    var direction = argument 0;
    var hsp = argument 1;
    var vsp = argument 2;
    
    //Collisions horizontales
    if (scr_collision_check(x+hsp, y)) 
    {
        while(!scr_collision_check(x+sign(hsp), y)) 
        {
            x += sign(hsp);
        }
        hsp = 0;
    } 
    else 
    {
        x += hsp;
    }
    
    //Collisions verticales
    if (scr_collision_check(x, y+vsp)) 
    {
        while(!scr_collision_check(x, y+sign(vsp))) 
        {
            y += sign(vsp);
        }
        vsp = 0;
    } 
    else 
    {
        y += vsp;
    }

}*/

