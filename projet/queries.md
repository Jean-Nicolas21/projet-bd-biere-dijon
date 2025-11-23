## 1 - Prix moyen de la bière par quartier

```sql
SELECT
	q.nom AS nom_quartier,
	ROUND(AVG(t.prix), 2) AS prix_moyen_biere
FROM beer.quartiers q
INNER JOIN beer.bars b ON q.id_quartier = b.id_quartier
INNER JOIN beer.tarification t ON b.id_bar = t.id_bar
GROUP BY q.nom
ORDER BY prix_moyen_biere DESC;
```
## 2 - Bars vendant l'IPA la moins chère

```sql
SELECT
	b.nom AS nom_biere,
	b.type AS type_biere,
	l.nom AS nom_bar,
	t.prix AS prix_biere
FROM beer.BIERES b
INNER JOIN beer.TARIFICATION t ON b.id_biere = t.id_biere
INNER JOIN beer.BARS l ON t.id_bar = l.id_bar
WHERE b.type LIKE 'India Pale Ale%' OR b.type LIKE 'Double IPA%'
ORDER BY prix_biere ASC
LIMIT 1;
```

La query ci-dessus répond à la demande initiale, cependant bar au pluriel dans la consigne présente une ambiguïté sémentique, c'est pourquoi je propose une seconde query alternative qui affichera tout les bars vendant des IPA et DOUBLE IPA triés par prix croissant.

```sql
SELECT
	b.nom AS nom_biere,
	b.type AS type_biere,
	l.nom AS nom_bar,
	t.prix AS prix_biere
FROM beer.BIERES b
INNER JOIN beer.TARIFICATION t ON b.id_biere = t.id_biere
INNER JOIN beer.BARS l ON t.id_bar = l.id_bar
WHERE b.type LIKE 'India Pale Ale%' OR b.type LIKE 'Double IPA%'
ORDER BY prix_biere ASC;
```

## 3- Bières vendues dans 5 bars ou plus

```sql
SELECT
	b.nom AS nom_biere,
	COUNT (t.id_bar) AS nombre_bars_vendeurs
FROM beer.BIERES b
INNER JOIN beer.TARIFICATION t ON b.id_biere = t.id_biere
GROUP BY b.id_biere, b.nom
HAVING COUNT (t.id_bar) >= 5
ORDER BY nombre_bars_vendeurs ASC;
```

## 4 - Bars sans bière à moins de 6 euros

```sql
SELECT
	l.nom AS nom_bar,
	MIN(t.prix) AS prix_mini_biere
FROM beer.BARS l
INNER JOIN beer.TARIFICATION t ON l.id_bar = t.id_bar
GROUP BY l.id_bar, l.nom
HAVING MIN(t.prix) >= 6.00
ORDER BY prix_mini_biere DESC;
```
PS: Il n'y en a aucun dans mon seeding.