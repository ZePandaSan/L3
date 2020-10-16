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
