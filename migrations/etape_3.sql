
CREATE TABLE commande (
    id_commande SERIAL PRIMARY KEY,
    dateCommande DATE NOT NULL
);

CREATE TABLE commandeDetail (
    id_commandeDetail SERIAL PRIMARY KEY,
    id_commande INT REFERENCES commande(id_commande),
    id_plat INT REFERENCES plat(id_plat),
    quantite INT NOT NULL
);


INSERT INTO commande (dateCommande)
VALUES ('2026-10-16');

INSERT INTO commandeDetail (id_commande, id_plat, quantite)
VALUES
(1, 1, 2),
(1, 2, 1);
je place quantite dans commandeDetail pour avoir un prix pour chaque nombre de plat et commande

