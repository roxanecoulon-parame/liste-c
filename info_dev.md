# Introduction

Nous allons ré implémenter la librairie liste-c car dans la version précédente il y a de la mémoire consommée qui n'est pas libérée à la fin du programme test.c . Nous allons donc ajouter la fonction deleteLC().

Voici le lien du dépôt distant : https://github.com/roxanecoulon-parame/liste-c/tree/main 

# La directive #pragma once
Dans les langages de programmation C et C++, #pragma once est une directive de préprocesseur non standard mais largement prise en charge, conçue pour que le fichier source actuel ne soit inclus qu'une seule fois dans une seule compilation. Ainsi, #pragma once a le même objectif que les include guards, mais avec plusieurs avantages, notamment : moins de code, évitement des conflits de noms et parfois une amélioration de la vitesse de compilation. D'autre part, #pragma once n'est pas nécessairement disponible dans tous les compilateurs et son implémentation est délicate et peut ne pas toujours être fiable.(Wikipédia)