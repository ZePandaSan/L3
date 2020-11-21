# XPath 
- [XPath](#xpath)
  - [Séléction de noeuds](#séléction-de-noeuds)
    - [Syntaxe](#syntaxe)
    - [Exemples](#exemples)
  - [Prédicat](#prédicat)

## Séléction de noeuds 
### Syntaxe 
| Expression  | Descritpion                                                           |
|-------------|-----------------------------------------------------------------------|
| `non_noeud` | Sélectionne le noeud `non_noeud`                                      |
| `/`         | Sélectionne à partir du noeud racine (courent)                        |
| `//`        | Sélectionne à partir du noeud racine (courent) mais "saute" un niveau |
| `.`         | Sélectionne le noeud courent                                          |
| `..`        | Sélectionne le parent du noeud courent                                |
| `@`         | Sélectionne l'attribut                                                |
| `*`         | Sélectionne tous les noeud                                            | 
| `@*`        | Sélectionne tous les attributs                                        |
### Exemples
| Expression path | Description                                                       |
|-----------------|--------------------------------------------------------------------
| `bookstore`     | Sélectionne tous les noeuds ayant pour nom `bookstore`            |
| `/bookstore`    | Sélectionne tous les noeuds de la racine `bookstore`              | 
| `bookstore/book`| Sélectionne tous les noeuds enfant de `bookstore` nommé `book`    |
| `//book`        | Sélectionne tous les noeuds `book` peut importe où ils se trouvent       |
| `bookstore//book` | Sélectionne tous les noeuds `book`  descendant peut importe où ils se trouvent |
| `//@lang` | Sélectionne tous les attributs `lang` |

## Prédicat 
 Prédicat | Descritpion |
|---------|-------------|
| `ancestor` | Sélectionne tous les ancêtres du noeud courent | 
| `ancestor-or-self` | Sélectionne tous les ancêtres du noeud courent et lui même | 
| `attribute` | Sélectionne l'attributs du noeud courent | 
| `child` | Sélectionne les enfants du noeud courent | 
| `descendant` | Sélectionne les descendant du noeud courent |
| `descendant-or-self` | Sélectionne les descentant du noeud courent et lui même |
| `following` | Sélectionne le noeud suivant du noeud courent | 
| `following-sibling` | Sélectionne les noeuds suivant du noeud courent | 
| `parent` | Sélectionne le parent du noeud courent |
| `preceding`| Sélectionne le noeud précédent du noeud courent |
| `preceding-sibling` | Sélectionne les noeuds précédents du noeud courent |
| `self` | Sélectionne le noeud courent | 