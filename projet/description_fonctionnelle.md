# Description fonctionnelle

## Entités

Les entités principales seront ; les quartiers, les bars, les bières et la tarification.

## Attributs

Les entités auront différents attributs: 
- les quartiers; identifiant quartier (clé primaire), nom, zone
- les bars; identifiant bars (clé primaire), identifiant quartier(clé étrangère), nom, adresse
- les bières; identifiant bières(clé primaire), type, nom, degré
- la tarification; identifiant bière + identifiant bars (clé primaire), identifiant bière (clé étrangère), identifiant bars (clé étrangère), prix

## Relations

La description des relations est descendantes pour un soucis de logique, concrétement:
- Un quartier détient plusieurs bars dans sa zone (relation 1 à N, ONE TO MANY)
- Un bar possède plusieurs bières et une même bière peut se vendre dans différents bars (relation N à N, MANY TO MANY)
- Le prix d'une bière varie selon le bar dans lequel elle est vendue  (relation N à N, MANY TO MANY)

## Règles métiers

Le système permettra de faire:
- Lister les différents quartiers
- Rechercher les bars présents dans un quartier donné
- Lister les différentes bières dans un bar donné
- Rechercher dans quels bars se trouve une bière
- Voir les différents prix pour une bière donné selon le bar
- Trouver le prix le moins chère pour une bière donnée parmis la liste de bars où elle est vendue
- Trier les bières par prix, degré ou encore par type
- Trier les bars selon les caractéristiques des bières qu'ils proposent
- Établir le prix moyen d'un bière selon un quartier donné ou dans la ville en entier
- Rechercher un bar selon une son nom ou adresse, ou avec une partie du nom ou de l'adresse
  

