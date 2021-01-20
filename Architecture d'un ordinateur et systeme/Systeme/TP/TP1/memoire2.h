#ifndef MEMOIRE2_H
#define MEMOIRE2_H


typedef struct memoire *memoire;
typdef struct bloc *bloc;

memoire creerMemoire (int tailleMot, int nbMots);
bloc allocationMemoire (memoire mem, int tailleAAllouter);
void liberationMemoire (memoire mem, bloc blocALiberer);


#endif  /* MEMOIRE2 */
