#Définition des constantes
LIB_DIR = ../lib


BUILD = build
TEST = test


#Exercice 10 : 
help : 
	@echo '	 === Cibles disponibles ==='
    @echo '  === -test_lib : génère le programme final (défaut)' 
    @echo '  === clean : supprime tous les fichiers .o'
    @echo "  === help : affichage de l'aide"
	@echo "  === run : lance le fichier test01"


#Exercice 6 : génération de l'exécutable test01
$(BUILD)/test01 : $(TEST)/test01.c
	@echo '=== compilation finale test_lib ==='
	gcc -Wall $(TEST)/test01.c  -o $(BUILD)/test01

#Exercice 9 : nettoyage de projet
clean : 
	@echo '=== Suppression de tous les .o ==='
	rm -rf $(BUILD)/*.o $(LIB_DIR)/*.o $(BUILD)/test_lib


#Exercice 15 
run : $(BUILD)/test01
	@$(BUILD)/test01
