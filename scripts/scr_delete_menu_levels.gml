///Détruit tout les boutons de niveaux affichés à l'écran


//Détruit les instances des boutons
with (obj_button_level)
{
    instance_destroy();
}

//Appele le draw event afin d'effacer le texte
event_perform(ev_draw, 0);
