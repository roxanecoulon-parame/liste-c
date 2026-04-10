#Définition des constantes
LIB_DIR = ../lib
BUILD = build
TEST = test


#Exercice 7 : 
help : 
	@echo '	 --- Cibles disponibles ---'
	@echo '  --- clean : supprime tous les fichiers .o'
	@echo '  --- help : affiche de l'aide
	@echo "  --- run1 : lance le fichier test01"
	@echo "  --- run2 : lance le fichier test02"
	@echo "  --- run3 : lance le fichier test03"
	@echo "  --- bench_test02 : génère l'executable de test02 intégrant le diagnostique de fuite de mémoire "


#diagnostic de mémoire de test02
bench_test02 :
	@echo '---executable de test02 intégrant le diagnostique de fuite de mémoire---'
	@gcc -Wall -g -fsanitize=address $(TEST)/test02.c $(LIB)/liste-c.o -o $(BUILD)/test02

# génération de l'exécutable test01
$(BUILD)/test01 : $(TEST)/test01.c
	@echo '=== compilation de test01 ==='
	@gcc -Wall $(TEST)/test01.c  -o $(BUILD)/test01

# génération de l'exécutable test02
$(BUILD)/test02 : $(TEST)/test02.c
	@echo '=== compilation de test02 ==='
	@gcc -Wall $(TEST)/test02.c $(LIB)/liste-c.o -o $(BUILD)/test02

	
# génération de l'exécutable test03
$(BUILD)/test03 : $(TEST)/test03.c
	@echo '=== compilation de test03 ==='
	@gcc -Wall $(TEST)/test03.c $(LIB)/liste-c.o -o $(BUILD)/test03


#lance test01
run1 : $(BUILD)/test01
	@./$(BUILD)/test01

#lance test02
run2 : $(BUILD)/test02
	@./$(BUILD)/test02

#lance test03
run3 : $(BUILD)/test03
	@./$(BUILD)/test03

#Exercice 9 : nettoyage de projet
clean : 
	@echo '=== Suppression de tous les .o ==='
	rm -rf $(BUILD)/*.o $(LIB_DIR)/*.o $(BUILD)/test_lib
