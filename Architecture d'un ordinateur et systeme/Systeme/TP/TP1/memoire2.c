#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>

#include "memoire2.h"
#include "list.h" //vous pouvez remplacer par votre implémentation de liste favorite

enum blocLibre { Libre, Utilise};

struct bloc {
  int debut;
  int taille;
  enum blocLibre drapeau;
};

struct memoire {
  int tailleMot;
  int nbMots;
  list listBlocs;
};

memoire creerMemoire (int tailleMot, int nbMots) {

}

bloc allocationMemoire (memoire mem, int tailleAAllouer) {

}

void liberationMemoire (memoire mem, bloc blocALiberer) {
  
}
