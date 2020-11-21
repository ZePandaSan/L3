# XML Schema 
- [XML Schema](#xml-schema)
  - [En-tête](#en-tête)
  - [Elément](#elément)
    - [Les types](#les-types)
    - [Autres](#autres)
    - [Les attributs](#les-attributs)
    - [Les types](#les-types-1)
    - [Autres attributs](#autres-attributs)
  - [Restriction](#restriction)
    - [Contrainte](#contrainte)
    - [Exemple](#exemple)
  - [Indicateurs](#indicateurs)
    - [Séquences](#séquences)
    - [Ordre aléatoire](#ordre-aléatoire)
    - [Choix](#choix)
  - [Exemple](#exemple-1)
- [Source](#source)
## En-tête 
```XML 
<?xml version="1.0" encoding="UTF-8" ?>
<xs:schema xmlns:xs="http://www.w3.org/2001/XMLSchema">
.
.
.
</xs:schema>
```
## Elément 
Pour créer un élément on utilise `xs:element` comme ceci : 
```xml
<xs:element name="xxx" type="yyy"/>  
```
### Les types 
| Type              
|--------------
| `xs:string`       
| `xs:decimal`       
| `xs:integer`        
| `xs:boolean` 
| `xs:date`
| `xs:time`

### Autres 
- Pour mettre une valeur par défaut : 
```xml
<xs:element name="xxx" type="yyy" default="zzz"/>  
```
- Pour fixer une valeure 
```xml
<xs:element name="xxx" type="yyy" fixed="zzz"/>  
```
### Les attributs 
Pour créer un élément on utilise `xs:attribute` comme ceci : 
```xml
<xs:attribute name="xxx" type="yyy"/>  
```
### Les types 
| Type              
|--------------
| `xs:string`       
| `xs:decimal`       
| `xs:integer`        
| `xs:boolean` 
| `xs:date`
| `xs:time`

### Autres attributs 
- Pour mettre une valeur par défaut : 
```xml
<xs:attribute name="xxx" type="yyy" default="zzz"/>  
```
- Pour fixer une valeure 
```xml
<xs:attribute name="xxx" type="yyy" fixed="zzz"/>  
```
- Pour que la l'attribut soit obligatoire :
```xml
<xs:attribute name="xxx" type="yyy" use="required"/>  
```
## Restriction 
On utilise `xs:restriction` comme ceci : 
```xml
 <xs:restriction base="xxx">
     ...
 </xs:restriction>
``` 
où `xxx` est le type
### Contrainte 
| Contrainte | Description                               |
| -----------|-----------------------------------------  |
| enumeration | Définie la liste des valeurs acceptables |
| fractionDigits | Spécifie le nombre maximum de décimales autorisé. Doit être égal ou supérieur à zéro |
| length | Spécifie le nombre exact de caractères ou d'éléments de liste autorisés. Doit être égal ou supérieur à zéro |
| maxExclusive | Spécifie les limites supérieures des valeurs numériques (la valeur doit être inférieure à cette valeur) |
| maxInclusive | Spécifie les limites supérieures des valeurs numériques (la valeur doit être inférieure ou égale à cette valeur) | 
| maxLength | Spécifie le nombre maximal de caractères ou d'éléments de liste autorisés. Doit être égal ou supérieur à zéro | 
| minExclusive | Spécifie les limites inférieures des valeurs numériques (la valeur doit être supérieure à cette valeur) | 
| minInclusive | Spécifie les limites inférieures des valeurs numériques (la valeur doit être supérieure ou égale à cette valeur) | 
| minLength | Spécifie le nombre minimum de caractères ou d'éléments de liste autorisés. Doit être égal ou supérieur à zéro | 
| pattern | Définit la séquence exacte de caractères acceptables | 
| totalDigits | Spécifie le nombre exact de chiffres autorisés. Doit être supérieur à zéro | 
| whiteSpace | Spécifie comment les espaces blancs (sauts de ligne, tabulations, espaces et retours chariot) sont gérés | 

### Exemple 
```xml
<xs:element name="car">
  <xs:simpleType>
    <xs:restriction base="xs:string">
      <xs:enumeration value="Audi"/>
      <xs:enumeration value="Golf"/>
      <xs:enumeration value="BMW"/>
    </xs:restriction>
  </xs:simpleType>
</xs:element> 
```
## Indicateurs 
### Séquences 
L'indicateur `xs:sequence` spécifie que les éléments enfants doivent apparaître dans un ordre spécifique.
### Ordre aléatoire 
L'indicateur `xs:all` spécifie que les éléments enfants peuvent apparaître dans n'importe quel ordre, et que chaque élément enfant ne doit apparaître qu'une seule fois. 
### Choix 
L'indicateur `xs:choice` spécifie qu'un élément enfant ou un autre peut se produire.

## Exemple 
Il s'agit de l'exercice 2 de l'examen blanc :
```xml
  <xs:schema xmlns:xs="http://www.w3.org/2001/XMLSchema">
        <xs:simpleType name="typeAnnee">
            <xs:restriction  base="xs: string">
                <xs:pattern value="[0-9]{4}"/>
            </xs:restriction>
        </xs:simpleType>

        <xs:complexType name="typeMandat">
            <xs:sequence>
                <xs:element name="debut" tupe="typeAnnee"/>
                <xs:element name="fin" type="typeAnnee" minOccurs="0"/>
            </xs:sequence>
            <xs:attribute name="nom" type="xs:sring" use="required"/>
        </xs:complexType>

        <xs:complexType name =" typeEntraineur ">
            <xs:sequence>
                <xs:element name ="nom" type ="xs:string"/>
                <xs:choice  maxOccurs="unbounded">
                    <xs:element name="club" type="typeMandat"/>
                    <xs:element name="nationale" type="typeMandat"/>
                </xs:choice>
            </xs:sequence>
            <xs:attribute name="id" type="xs:string"/>
        </xs:complexType>

        <xs:element name="entraineurs>
            <xs:complexType>
                <xs:sequence>
                    <xs:element name="entraineur" type="typeEntraineur" maxOccurs="unbounded"/>
                </xs:sequence>
            </xs:complexType>
        </xs:ement>
    </xs:schema>
```

# Source 
Fiche inspirée par le cours de  https://www.w3schools.com/ et par le sujet blanc disponible du moodle.

