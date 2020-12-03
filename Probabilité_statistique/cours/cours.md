# Probabilités et statistiques 
- [Probabilités et statistiques](#probabilités-et-statistiques)
  - [Modalité d'examen](#modalité-dexamen)
  - [Chapitre 1 : Introduction aux probabilités](#chapitre-1--introduction-aux-probabilités)
    - [Expérience aléatoire](#expérience-aléatoire)
    - [Ensemble fondamental $\Omega$](#ensemble-fondamental-omega)
    - [Evènement élémentaire $\omega$](#evènement-élémentaire-omega)
    - [Evenement](#evenement)
    - [Ensembliste vs Probabiliste](#ensembliste-vs-probabiliste)
    - [Probabilités](#probabilités)
      - [Probabilité](#probabilité)
      - [Espace de probabilité](#espace-de-probabilité)
      - [Probabilité (def 2)](#probabilité-def-2)
      - [Exemple](#exemple)
    - [Univers non dénombrable](#univers-non-dénombrable)
      - [Fréquence relative :](#fréquence-relative-)
      - [Probabilités de A:](#probabilités-de-a)
    - [Espace probabilisé](#espace-probabilisé)
      - [$\alpha$-algèbre](#alpha-algèbre)
    - [Propriétés des probabilités](#propriétés-des-probabilités)
      - [Inégalité de boole](#inégalité-de-boole)
      - [Formule de Poincaré](#formule-de-poincaré)
        - [Exemples :](#exemples-)
    - [Loi uniforme](#loi-uniforme)
      - [Définition](#définition)
      - [Propriété](#propriété)
    - [Cardinaux et suites](#cardinaux-et-suites)
      - [Proposition](#proposition)
      - [Suite de longueur r](#suite-de-longueur-r)
      - [Théorème](#théorème)
    - [Permutations](#permutations)
      - [Principe de dénombrement](#principe-de-dénombrement)
      - [Permutation](#permutation)
      - [Théorème](#théorème-1)
    - [Arrangements](#arrangements)
      - [Définition](#définition-1)
      - [Théorème](#théorème-2)
    - [Combinaisons](#combinaisons)
      - [Théorèmes](#théorèmes)
    - [Formule du binôme de Newton](#formule-du-binôme-de-newton)
      - [Proposition](#proposition-1)
      - [Théorème (Formule du binôme de Newton)](#théorème-formule-du-binôme-de-newton)
      - [Théorème (nombre de parties d'un ensemble)](#théorème-nombre-de-parties-dun-ensemble)
    - [Discernables vs Indiscernables](#discernables-vs-indiscernables)
      - [Théorème](#théorème-3)
      - [Théorème 2](#théorème-2)
    - [Probabilités égales ou pas](#probabilités-égales-ou-pas)
      - [Répétions indépendantes](#répétions-indépendantes)
  - [Chapitre 2 : Probabilités conditionnelles](#chapitre-2--probabilités-conditionnelles)
    - [Probabilité conditionnelle](#probabilité-conditionnelle)
    - [Evênement indépendant](#evênement-indépendant)
      - [Proposition](#proposition-2)
      - [Remarque](#remarque)
    - [Famille d'évènements mutuellement indépendants](#famille-dévènements-mutuellement-indépendants)
      - [Définition](#définition-2)
      - [Remarque](#remarque-1)
    - [Système complet d'évènement](#système-complet-dévènement)
      - [Définition](#définition-3)
      - [Proposition](#proposition-3)
      - [Théorème des probabilités totales](#théorème-des-probabilités-totales)
    - [Formules de Bayes](#formules-de-bayes)
      - [Définition](#définition-4)
      - [Corollaire](#corollaire)
  - [Chapitre 3 : Variables aléatoires discrètes](#chapitre-3--variables-aléatoires-discrètes)
  - [Chapitre 4 : Couple de variables aléatoires disscrètes](#chapitre-4--couple-de-variables-aléatoires-disscrètes)
  - [Chapitre 5 : Estimation et intervalles de confiance](#chapitre-5--estimation-et-intervalles-de-confiance)
  - [Chapitre 6 : Regression linéaire](#chapitre-6--regression-linéaire)
## Modalité d'examen 
- Première session (Examen termianl : 75% (10 décembre), TP : 25%)
- Deuxième session (Examen terminal : 100%)

## Chapitre 1 : Introduction aux probabilités  
### Expérience aléatoire
Définition : Une expérience aléatoire (ou épreuve) est tout phénomène dont on ne peut pas prédire l'issue avec certitude.
Exemples : 
- Lancer d'une pièce
- Lancer d'un dé à six faces 
- Lancer d'une pièce trois fois de rang 

### Ensemble fondamental $\Omega$
L'ensemble fondamental ou Univers est l'ensemble de toutes les issues possible
 d'une expérience aléatoire.
### Evènement élémentaire $\omega$
Définition : Un événement élémentaire $\omega$ est toute issue d'une expérience aléatoire, i.e tout élément $\omega$.
### Evenement 
Définition : Un évènement, représenté par une lettre majuscule, est tout sous-ensemble de $\Omega$, i.e toute réunion d'élément élémentaire.
### Ensembliste vs Probabiliste 
- L'ensemble des évènements coïncide avec l'ensemble $p(\Omega)$ des parties de l'ensemble fondamental $\Omega$.
- Un évènement est réalisé su un des évènements élémentaires le constituant est réalisé
- Etant donnés 
    - Une expérience aléatoire d'univers $\Omega$
    - Un évènement A c $\Omega$
- Supposons que 
    - L'expérience aléatoire est répétée N fois 
    - N(A) correspond au nombre de fois où l'évènement A est réalisé 
### Probabilités 
#### Probabilité
On appelle (mesure de) probabilité toute application P sur $P(\Omega)$ telle que : 
- P(A) $\in$ [0,1] pour tout évènement $A \in p(\Omega)$
- P($\Omega$)=1 (i.e propriété de normalisation)
- P($A \cup B$)=P(A)+P(B) pour toute paire d'évènements incompatibles A et B (propriété d'additivité)
#### Espace de probabilité
Le couple ($\Omega$, P) s'appelle espace de probabilité
#### Probabilité (def 2)
Une (loi de) probabilité sur l'ensemble $\Omega$={$w_1,...,w_n$} est la donnée de ($p_1,...,p_n$) $\in$ $[0,1]^n$ tel que $\sum_{i=1}^{n} p_i=1$
#### Exemple 
Un entraineur de football pense qu'il y a 3 chances contre 2 que son équipe remporte le prochain match, tandis que les cotes contre une défaite ou un nul de son équipe dont de 4 contre 1 et de 9 contre 1, respectivement.
- Décrire l'ensemble des évènements élémentaires
  $\Omega$={victoire,nul,défaite}
- Quelles sont leurs proba ? 
  P(Victoire)=3/5, P(nul)=1/5, P(défaite)=1/10
- Définissent-elles une loi de probabilité ? 
  P(victoire)+p(nul)+p(défaite)>1 donc non
### Univers non dénombrable 
- Expérience aléatoire avec un nombre infini d'issues (e.g, lancer un dé jusqu'à obtenir un pile)
- Propriété d'additivé 

#### Fréquence relative : 
la fréquence relative de A est égale au ratio N(A)/N
#### Probabilités de A: 
La fréquence relative semble se stabiliser prés d'une valeur réelle P(A) lorsque N devient très grand (loi empyrique) : le nombre A ...

Propriété d'additivé : P($\cup_{i=1}^{+ \infty}$Ai) = $\sum_{i=1}^{+\infty}$   P(Ai)

### Espace probabilisé 
#### $\alpha$-algèbre
Une collection A de sous esemblles de $\Omega$ est un $\alpha$-algèbre (ou tribu) si :
- $\Omega$ $\in$ $A$ 
- A $\in$ $A$ implique A$^c$ $\in A$
- Ab = $A$ 
- si {Ai} est une séquence finie ou infinie de Ab alors UiAi(?) $\in$ Ab

Un espace probabiliste est un triplet (R, Ab, P) ou ab est $\alpha$-algébre non vide de sous ensembles de $\Omega$ et P est une application de Ab dans |R telle que :

- P($\Omega$) = 1

- 0 $\le$ P(A) $\le$ 1
### Propriétés des probabilités 
A$_1$,...,A$_n$ $\in$ A, implique $\cup^{n}_{i=1}$ A$_i$ $\in$ A$_i$, et $\cap^{n}_{i=1}$ A$_i$ $\in$ A

P($\emptyset$)=0

P(A$^C$)=1-P(a)

P(A) $\le$ P(B) pour A,B $\in$ A, , A c B

P(A$\cup$B)=P(A)+P(B)-P(A$\cap$B)
#### Inégalité de boole 
Si {A$_i$} est une séquence d'événements, alors P($\cup$ A$_i$) $\le$ $\sum$ P(A$_i$)
#### Formule de Poincaré
P($\cup_{r=1}^{n}$ A$_i$)=$\sum_{i=1}^{n}$(-1) ...
##### Exemples : 
- Considerons n lancer d'une pièce et soit $A$ l'évènement "Face à été obtenu au moins une fois". Quelle est la valeur de $P(A)$?
  P(A)=1-P(A$^c$)=1-$1\over{2^n}$ 
- Une carte est sélectionnée aléatoirement d'un jeu de 52 cartes. Qeulle est la probabilité que la carte sélectionnée soit un roi un pique ?
  A={roi}, B={pique}
  $P(A \cup B)$=$P(A)+P(B)-P(A \cap B)$=$4\over{52}$+$13\over{52}$-$1\over{52}$=$4\over{13}$  
### Loi uniforme
#### Définition 
Soit $\Omega$ un ensemble fini. Une loi est dite uniforme (ou quiprobable) si les probabilités de tous les éènements élémentaires sont les mêmes, i.e, valent $1\over{\mid \Omega \mid}$
#### Propriété 
Pour tout évènement A, $P(A)$=${\mid A \mid}\over{\mid \Omega \mid}$ 
### Cardinaux et suites 
#### Proposition 
Soient A et B deux ensembles finies
- $\mid A \times B \mid$=$\mid A \mid$.$\mid B \mid$
- $\mid A \cup B\mid$=$\mid A \mid$+$\mid B \mid$ - $\mid A \cap B \mid$
#### Suite de longueur r 
Soit A un ensemble fini. Une suite ordonnée de longueur r avec remise constituée d'éléments de A est un r-uplet, r-liste, ($a_1$,...,$a_r$) avec $a_i$ $\in$ A pour tout i appartenant à {1,...,n}. L'ensemble A est appelé population.
#### Théorème 
Le nombre de suites de longueurs r avec remise d'une population de cardinalité n est $n^r$
### Permutations 
#### Principe de dénombrement 
Considérons deux expériences aléatoires produisant n et m issues différentes, respectivement. Au total, pout les deux expéreinces aléatoires prises ensembles, il existe nm issues possibles.
#### Permutation 
Soit A un ensemble fini. Une permutatuin de A est une manière d'ordonner les éléments de A.
#### Théorème 
Le nombre de permutations d'une population de cardinalité n est n!

### Arrangements 
#### Définition 
Soit $A$ un ensemble fini. Un arrangement de r éléments pris parmis $A$ est une suite ordonnée de longueur $r$ constituée d'éléments de $A$ dans remise, i.e , un $r$-uplet, ou $r$-liste, (a$_1$,...,a$_r$) avec a$_i$ $\in$ $A$ $\setminus${a$_1$,...,a$_{i-1}$}} pour tout i $\in$ {1,...r}
#### Théorème 
Le nombre d'arrangements de r éléments pris parmis n est $(n)^r$=$A^r_n$=$n!\over{(n-r)!}$
### Combinaisons 
#### Théorèmes 
$(^n_r)$=$C_n^r$=$n!\over(n-r)!r!$
### Formule du binôme de Newton 
#### Proposition 
Pour tout entier positif n et pour tout entirer $r \le n$
- $(^n_0)$=1 
- $(^n_r)$=0 si r < 0
- $(^n_r)$=$(^n_{n-r})$
- $(^n_r)$=$(^{n-1}_r)$+$(^{n-1}_{r-1})$
- $(^n_r)$=$n\over{r}$$(^{n-1}_{r-1})$
#### Théorème (Formule du binôme de Newton)
Soient $a$ et $b$ deux réels et $n$ un entier strictement positif 

$(x+y)^n$=$\sum_{k=0}^{n}$$(^n_k)$$a^k$$b^{n-k}$
#### Théorème (nombre de parties d'un ensemble)
Soit $\Omega$ le nombre de parties de $\Omega$, i.e, la cardinalité de $P(\Omega)$, vaut $2^n$.
### Discernables vs Indiscernables
#### Théorème 
Considérons $n$ objets parmi lsquels $n_1$ sont indiscernables, $n_2$ sont indiscernables,...,$n_p$ sont indiscernables. Le nombres de permutations différentes de ces $n$ éléments est $n!\over{n_1!n_2!...,n_p!}$
#### Théorème 2 
Le nombre de possibilités de distribuer $r$ boules indiscernables dans $n$ boites vaut $(^{n+r-1}_r)$.
### Probabilités égales ou pas 
- Une pièce est lancée jusqu'à obtenir face avec un maximum de deux lancers.
  - Trois évènements élémentaires $\Omega$={F,PF,PP}
  - Loi de probabilité #1 (De Roverbal) : P($\omega$)=$1\over{3}$ pour tout $\omega$ $\in$ $\Omega$
  - Loi de probabilité #2 (Pascal) : P(F)=$1\over{2}$, P(PF)=$1\over{4}$, P(PP)=$1\over{4}$
#### Répétions indépendantes
Supposons qu'une expérience aléatoire, modélisée par un univers $\Omega$ et une probabilité $P$, est répétée $N$ fois. Le nouvel univers est $\Omega^N=\Omega\times...\Omega$ et la probabilité associée est $P^N((\omega_1,...,\omega_N))=P(\omega_1)...P(\omega_N)$
## Chapitre 2 : Probabilités conditionnelles 
### Probabilité conditionnelle
Etant données deux évènements A et B avec $P(B)>0$, la probabilité conditionelle de A sacahnt que B est réalisé est 

$P(A \mid B)=P_B(A)$=${P(A \cap B)}\over{P(B)}$
- La probabilité conditionnelle sachant $B$, $P(.\mid B)$ est une nouvelle probabilité 
- Si $P(B)=0$, alors on a usuellement $P(A \mid B)=0$
- $P(A \cap B)=P(A \cap B)P(B)=P(B \cap A)P(A)$ [Erreur sur le slide du prof]
### Evênement indépendant
Deux évênements A et B, où $P(A) \neq 0$ et $P(B) \neq 0$, sont indépendants si l'une des conditions suivantes est satisfaite 
- $P(A\cap B)=P(A)P(B)$
- $P(A \cap B)=P(A)$
- $P(B \mid A)=P(B)$
#### Proposition 
Il est équivalent de dire 
- $A$ et $B$ sont indépendants
- $A^C$ et B sont indépendants 
- $A$ et $B^C$ sont indépendants 
- $A^C$ et $B^C$ sont indépendants 
#### Remarque 
Deux évênements incompatibles A et B, où $P(A) \neq 0$ et $P(B) \neq 0$, ne sont jamais indépendants.
$P(A \mid B)$=${P(A \cap B)}\over{P(B)}$$=0$ car incompatibilité implique $P(A\cap B)=0$
### Famille d'évènements mutuellement indépendants 
#### Définition 
Soient A$_i, i \in I$ où $I$ est un ensemble d'indices possiblement infini, une famille d'évênments. Les évènements A$_i$ sont mutuellement indépendants si et seulement si pour chaque ensemble fini d'indices distincts $i_1,..,i_k \in I$, nous avons 

$P({A_i}_{1} \cap {A_i}_{2} \cap ... \cap {A_i}_{k}) = P({A_i}_{1})P({A_i}_{2})...P({A_i}_{k})$
#### Remarque 
La condition $P({A_i}_{1} \cap {A_i}_{2} \cap ... \cap {A_i}_{k}) = P({A_i}_{1})P({A_i}_{2})...P({A_i}_{k})$ n'applique pas de condition analogue pour toute sous-famille d’evènements.
### Système complet d'évènement 
#### Définition
Tout famille $A_i, i \in I$, finie ou pas, d'évènements vérifiant les conditions 
- A$_i \cap$A$_j=\emptyset$ pour tout $i \neq j$ 
- $\cup_{i \in I}$A$_i=\Omega$
est appelé système complet d'évènements
#### Proposition 
Soit $A_i, i \in I$, un système complet d'évènements. Alors $P(A)=\sum_{i\in I}P(A\cap A_i)$

P(A) est calculée par un système complet d'évènemments dans lequel A se réalise.
#### Théorème des probabilités totales 
Soit $A_i, i \in I$ un système complet d'évènements. Alors pour tout évènement A, nous avons 

$P(A)=\sum_{i \in I}P(A_i)P(A \mid A_i)$

### Formules de Bayes 
#### Définition
Soit A$_i$, $i \in I$, un système complet d'vènements. Alors pour tout évènement A, nous avons 

$P(A_k \mid A)=$${P(A \mid A_k)P(A_k)}\over{\sum_{i \in I}P(A \mid A_i)P(A_i)}$
#### Corollaire
- $P(A \cap B \cap B \cap C)=P(A)P(B \mid A)(P(C \mid A \cap B)$
- $P(A \mid B)$=${P(A)P(B \mid A)}\over{P(B)}$=${P(A)P(B \mid A)}\over{P(A)P(B \mid A)+P(A^C)P(B \mid A^C)}$

## Chapitre 3 : Variables aléatoires discrètes 
## Chapitre 4 : Couple de variables aléatoires disscrètes 
## Chapitre 5 : Estimation et intervalles de confiance 
## Chapitre 6 : Regression linéaire  
