# Description fonctionnelle

## Entités

Les entités principales seront ; les bars, les bières, les quartiers et les prix.

## Attributs

Les entités auront différents attributs: 
- les bars; nom, adresse, identifiant bar (clé primaire), identifiant bières(clé étrangère), identifiant quartier(clé étrangère)
- les bières; nom, degré, prix, identifiant bières(clé primaire), type, 
- les quartiers; nom, adresse, identifiant quartier (clé primaire)
- les prix; identifiant prix (clé primaire), identifiant bière (clé étrangère), valeur, identifiant bar(clé étrangère)
