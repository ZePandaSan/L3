# Element Tree
- [Element Tree](#element-tree)
  - [Lecture du document et récupération de la racine](#lecture-du-document-et-récupération-de-la-racine)
  - [Récupération de la balise et des attributs](#récupération-de-la-balise-et-des-attributs)
  - [Itérer sur les noeuds enfants](#itérer-sur-les-noeuds-enfants)
  - [Trouver des éléments et des attributs](#trouver-des-éléments-et-des-attributs)
  - [Création d'un document XML](#création-dun-document-xml)

## Lecture du document et récupération de la racine
```python
import xml.etree.ElementTree as ET

tree = ET.parse(’file.xml’)

root = tree.getroot()
```

## Récupération de la balise et des attributs
```python
name.tag # balise
name.attrib # Attribut
```

## Itérer sur les noeuds enfants
```python
for child in root:
    print child.tag, child.attrib
```

## Trouver des éléments et des attributs
```python
for country in root.findall(’country’):
    rank = country.find(’rank’).text
    name = country.get(’name’)
    print name, rank
```

## Création d'un document XML
```python
import xml.etree.ElementTree as ET

tree = ET.parse(’file.xml’)

root = tree.getroot()

doc = ET.SubElement(root, "doc")

ET.SubElement(doc, "field1", attr1="blah", attr2="2").text = "some value1"
ET.SubElement(doc, "field2", attr1="asdfasd").text = "some value2"

tree = ET.ElementTree(root)
tree.write("file.xml")

```
Le document `file` obtenu : 
```xml
<root>
    <doc>
       <field1 attr1="blah" attr2="2">some value1</field1>
       <field2 attr1="asdfasd">some value2</field2>
   </doc>
</root>
```

