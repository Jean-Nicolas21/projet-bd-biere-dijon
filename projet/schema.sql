CREATE SCHEMA IF NOT EXISTS beer;

SET search_path TO beer;

CREATE TABLE beer.QUARTIERS
(
    id_quartier SERIAL PRIMARY KEY,
    nom VARCHAR(255) NOT NULL UNIQUE,
    zone VARCHAR(255) NOT NULL
);

CREATE TABLE beer.BARS
(
    id_bar SERIAL PRIMARY KEY,
    nom VARCHAR(255) NOT NULL UNIQUE,
    adresse TEXT NOT NULL,
    id_quartier INT NOT NULL,
    FOREIGN KEY (id_quartier) REFERENCES beer.QUARTIERS (id_quartier)
);

CREATE TABLE beer.BIERES
(
    id_biere SERIAL PRIMARY KEY,
    nom VARCHAR(255) NOT NULL UNIQUE,
    type VARCHAR(255) NOT NULL,
    degre NUMERIC(4,2) NOT NULL CHECK ( degre > 0 )
);

CREATE TABLE beer.TARIFICATION
(
    id_bar INT  NOT NULL,
    id_biere INT  NOT NULL,
    prix NUMERIC(5,2) NOT NULL CHECK ( prix > 0),
    PRIMARY KEY (id_bar, id_biere),
    FOREIGN KEY (id_bar) REFERENCES beer.BARS (id_bar),
    FOREIGN KEY (id_biere) REFERENCES beer.BIERES (id_biere)
);
