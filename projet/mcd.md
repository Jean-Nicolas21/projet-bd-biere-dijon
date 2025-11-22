# MCD

## Code Mermaid

---
config:
  layout: elk
title: projet-bd-biere-dijon
---
erDiagram
	direction TB
  
	BARS {
		SERIAL id_bar PK ""  
		INT id_quartier FK "FK vers QUARTIERS, NOT NULL"  
		VARCHAR nom  "UNIQUE, NOT NULL, contient maximum 255 caractères"  
		TEXT adresse  ""  
	}

	BIERES {
		SERIAL id_biere PK ""  
		VARCHAR nom  "UNIQUE, NOT NULL, contient maximum 255 caractères"  
		VARCHAR type  "NOT NULL, contient maximum 255 caractères"  
		NUMERIC degre  "NOT NULL, > 0, format (4,2)"  
	}

	TARIFICATION {
		INT id_bar FK,PK "Clé primaire composée, FK vers BARS"  
		INT id_biere FK,PK "Clé primaire composée, FK vers BIERES"  
		NUMERIC prix  "NOT NULL, > 0,format (5,2)"  
	}

	QUARTIERS {
		SERIAL id_quartier PK ""  
		VARCHAR nom  "UNIQUE, NOT NULL, contient maximum 255 caractères"  
		VARCHAR zone  "contient maximum 255 cractères"  
	}

	QUARTIERS||--o{BARS:"1 à N, détient / occupe"
	BARS||--o{TARIFICATION:"1 à N, propose / sont réportoriées"
	BIERES||--o{TARIFICATION:"1 à N, côute / sont appliquées"

  ##

  

