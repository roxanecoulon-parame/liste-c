#include "../lib/liste-c.h"
#include <stdio.h>

char * affiche(char * liste){
    
    printf("La liste %s \n", liste);
}

int main(){
 
    ListeC liste1 = createLC() ;
    addLC(liste1,32);
    addLC(liste1,24);
    addLC(liste1,35);
    addLC(liste1,7);
    affiche(liste1); // quand je compile test02 sans le makefile, la création, l'affichage et l'ajout d'éléments dans la liste se fait bien mais les elt dans la liste ne sont pas les bons
    
    return 0;
}