# Exercice 1 
Soit la base de données Nations.xml
```XML
<?xml version="1.0" encoding="UTF-8"?>
<Pays>
	<pays>
		<nom>France</nom>
		<capital>Paris</capital>
		<Population-en-million id="2007">64</Population-en-million>
	</pays>
	<pays>
		<nom>Italie</nom>
		<capital>Rome</capital>
		<Population-en-million id="2006">58</Population-en-million>
	</pays>
	<pays>
		<nom>Espagne</nom>
		<capital>Madrid</capital>
		<Population-en-million id="2006">44</Population-en-million>
	</pays>
	<pays>
		<nom>Allemagne</nom>
		<capital>Berlin</capital>
		<Population-en-million id="2004">82</Population-en-million>
	<pays>
		<nom>Russie</nom>
		<capital>Moscou</capital>
		<Population-en-million id="2005">143</Population-en-million>
	</pays>
</Pays>
```
## Question 1 
Générer un fichier html à l'aide d'une transformation XSLT avec un tableau représentant la base de donnée.
Modèle du fichier à obtenir : Nations_v1.html
Réponse : EX1Q1_v1.xsl

## Question 2 
On veut cette fois-ci que le document affiche un tableau qui trie les pays dans l'ordre croissant en fonction de la taille de leurs population. Génerer le fichier html.
/!\ Le tri numérique ne fonctionne pas avec xsl:sort en effet il ne fait que des tris alphabétique caractère par caractère, dans notre exemple on a donc 143<44<58<64<82 je n'ai pas trouvé de solution. Il faudrait trier ça par XPath et j'ai la flemme :) 
Modèle du fichier à obtenir (avec la Russie qui spawn en haut grace à XSLT) : Nations.html
Réponse : EX1Q2.xsl

## Question 3 
On veut supprimer la population de la base de donnée. Généer un fichier XML sans la population.
