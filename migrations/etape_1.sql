//POSTGRESQL

CREATE database gargote;

CREATE table plat (
    id_plat SERIAL PRIMARY KEY,
    nom_plat VARCHAR(100) NOT NULL,    
    prix INT NOT NULL
    );

INSERT INTO plat (nom_plat, prix) VALUES ('Romazava', 7000);
INSERT INTO plat (nom_plat, prix) VALUES ('Ravitoto sy henakisoa', 8000);
INSERT INTO plat (nom_plat, prix) VALUES ('Akoho sy voanio', 8500);
INSERT INTO plat (nom_plat, prix) VALUES ('Mi sao', 6000);
INSERT INTO plat (nom_plat, prix) VALUES ('Soupe chinoise', 5000);
INSERT INTO plat (nom_plat, prix) VALUES ('Mofo gasy (les 4)', 1000);
INSERT INTO plat (nom_plat, prix) VALUES ('Ranon ampango', 500);

-> Je choisis INT pour le prix et SERIAL pour l'identifiant.