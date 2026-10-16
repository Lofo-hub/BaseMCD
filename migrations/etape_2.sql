
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


Create table categorie (
    id_categorie SERIAL PRIMARY KEY,
    nom_categorie VARCHAR(100) NOT NULL
);

ALTER table plat ADD COLUMN id_categorie INT;

UPDATE plat SET id_categorie = 1 WHERE nom_plat IN ('Romazava', 'Ravitoto sy henakisoa', 'Akoho sy voanio');
UPDATE plat SET id_categorie = 2 WHERE nom_plat IN ('Mi sao', 'Soupe chinoise');
UPDATE plat SET id_categorie = 3 WHERE nom_plat = 'Mofo gasy (les 4)';
UPDATE plat SET id_categorie = 4 WHERE nom_plat = 'Ranon ampango';

ALTER TABLE plat
ADD CONSTRAINT fk_plat_categorie
FOREIGN KEY (id_categorie)
REFERENCES categorie(id_categorie);

ALTER TABLE plat
ALTER COLUMN id_categorie SET NOT NULL;

-> Reponse 
. On ajoute pas directement une colonne categorie dans plat parceque ca creerait des 
doublons par exemple Plat Gasy et plat malgache qui devrait etre le meme
