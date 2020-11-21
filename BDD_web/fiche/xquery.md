# XQuery 
- [XQuery](#xquery)
  - [Sélection de noeud](#sélection-de-noeud)
    - [Extraire un document XML](#extraire-un-document-xml)
    - [Requête](#requête)
  - [FLWOR](#flwor)
  - [XQuery et HTML](#xquery-et-html)
  - [if-then-else](#if-then-else)
  - [Affectation](#affectation)
  - [Iteration](#iteration)

## Sélection de noeud 
### Extraire un document XML
```text
doc("file.xml")
```
### Requête
Xquery utilise XPath pour faire des requêtes.
```text
doc("file.xml")/child_node
```

## FLWOR
FLWOR est un acronyme pour "For, Let, Where, Order by, Return".

    For - sélectionne une séquence de nœuds
    Let - lie une séquence à une variable
    Where - filtres les noeuds
    Order by - trie les noeuds
    Return - les noeuds sont retourné

Annsi la requête : 
```text
doc("books.xml")/bookstore/book[price>30]/title 
```
peut être remplacé par : 
```text
for $x in doc("books.xml")/bookstore/book
where $x/price>30
return $x/title 
```

## XQuery et HTML 
On peut inclure des requête XQuery dans un document XML. 

```html
<ul>
{
for $x in doc("books.xml")/bookstore/book/title
order by $x
return <li>{data($x)}</li>
}
</ul> 
```
NB : data() permet de séléctionner seulement la donnée. 

## if-then-else 
```html
for $x in doc("books.xml")/bookstore/book
return if ($x/@category="children")
then <child>{data($x/title)}</child>
else <adult>{data($x/title)}</adult>
```

## Affectation
```html
let $x := (1 to 5)
return <test>{$x}</test>
```  
## Iteration 
```html
for $x at $i in doc("books.xml")/bookstore/book/title
return <book>{$i}. {data($x)}</book>
```



