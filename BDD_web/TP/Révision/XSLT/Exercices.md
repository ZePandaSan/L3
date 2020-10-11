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
Générer un fichier html à l'aide d'une transformation XSLT avec un tableau présenté comme ceci : 
| Pays | France | Italie | Espagne | Allemagne | Russie |
---------------------------------------------------------
Capital | Paris | Rome | Madrid | Berlin | Russie 
Population en million (année) | 64 | 58 | 44 | 82 | 143
