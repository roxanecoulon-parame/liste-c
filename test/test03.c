#include "../lib/liste-c.h"
#include <stdio.h>

char** affiche(ListeC liste){
    
    printf("La liste %s \n", liste);
}

int main(){
 
    ListeC liste2 = createLC() ;
    addLC(liste2,32);
    addLC(liste2,24);
    addLC(liste2,35);
    addLC(liste2,7);
    affiche(liste2); //la création, l'affichage et l'ajout d'éléments dans la liste se fait bien mais les elt dans la liste ne sont pas les bons
    
    replaceLC(liste2, -15, 1);
    affichage(liste2); 

    insertLC(liste2, 0, 2);
    insertLC(liste2, 64, 1);
    affichage(liste2); 

    return 0;
}