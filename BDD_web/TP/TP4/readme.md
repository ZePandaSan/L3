# TP 4 Base de donnée

## bug gitbash et linux

Si vous avez cette erreur

```text
FileNotFoundError: [Errno 2] No such file or directory: 'championnat.xml'
```

Remplacer la ligne 8

```python
FILE = "championnat.xml"
```

par

```python
FILE = "../championnat.xml"
```

## bug

exercice3-3 renvoi l'erreur

```text
Traceback (most recent call last):
  File "d:/Study/L3/S5/BDD_web/TP/TP4/Exercice3/exercice3-3.py", line 75, in <module>
    adv_favori = get_bete_noir(club, est_la_bete_noir_de, root)
  File "d:/Study/L3/S5/BDD_web/TP/TP4/Exercice3/exercice3-3.py", line 46, in get_bete_noir
    if butMarque>scoreMax:
TypeError: '>' not supported between instances of 'str' and 'int'
```

exercice5 renvoi l'erreur

```text
Traceback (most recent call last):
  File "d:/Study/L3/S5/BDD_web/TP/TP4/Exercice5/exercice5.py", line 33, in <module>
    if not (is_pair_correct(root.find("journees").findall("journee")[i], root.find("journees").findall("journee")[j])):
  File "d:/Study/L3/S5/BDD_web/TP/TP4/Exercice5/exercice5.py", line 21, in is_pair_correct
    dateTime1=datetime.strptime(date1, "%Y−%m−%d")
  File "C:\Users\Wassim\AppData\Local\Programs\Python\Python37-32\lib\_strptime.py", line 577, in _strptime_datetime
    tt, fraction, gmtoff_fraction = _strptime(data_string, format)
  File "C:\Users\Wassim\AppData\Local\Programs\Python\Python37-32\lib\_strptime.py", line 359, in _strptime
    (data_string, format))
ValueError: time data '2013-08-10' does not match format '%Y−%m−%d'
```