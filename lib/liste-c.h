#pragma once
#include <stdlib.h>

char* versionLC(); // version de la liste 

// création de la structure pour créer de listes en C
struct st_listeC;
typedef struct st_listeC * ListeC;


ListeC createLC();	 //création d'une liste 				
int sizeLC(ListeC liste); // taille de la liste 
void addLC(ListeC liste, int value);	// ajouter un elt à une liste 
int getLC(ListeC liste, int pos);	// avoir l'elt à la position pos

void replaceLC(ListeC liste, int value, int pos);	//remplacer un elt dans la liste à la position pos
void insertLC(ListeC liste, int value, int pos);	//ajouter un elt dans la liste à la position pos
void removeLC(ListeC liste, int pos); // retirer un elt de la liste à la position pos
char * affiche(char * liste); //affiche la liste dans le terminal