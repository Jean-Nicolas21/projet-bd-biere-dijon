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

## 3- Bières vendues dans plus de 5 bars

## 4 - Bars sans bière à moins de 6 euros
