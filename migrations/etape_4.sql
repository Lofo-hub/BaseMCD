CREATE TABLE client (
    id_client SERIAL PRIMARY KEY,
    nom_client VARCHAR(100) DEFAULT 'client de passage'
);

ALTER table commande ADD COLUMN id_client INT;


ALTER TABLE commande
ADD CONSTRAINT fk_commande_client
FOREIGN KEY (id_client)
REFERENCES client(id_client);


INSERT INTO client (nom_client)
VALUES
('Jean'),
('Marie'),
('Paul'),
('Hery'),
('client de passage');

INSERT INTO commande (dateCommande, id_client)
VALUES
('2026-10-14', 1),
('2026-10-14', 2),
('2026-10-15', 3),
('2026-10-15', NULL),
('2026-10-16', 4),
('2026-10-16', NULL),
('2026-10-16', 5);

INSERT INTO commandeDetail (id_commande, id_plat, quantite)
VALUES
(1, 1, 2),
(1, 2, 1),
(2, 4, 3),
(2, 5, 2),
(3, 3, 1),
(3, 6, 4),
(4, 1, 1),
(4, 7, 2),
(5, 2, 2),
(5, 3, 1),
(6, 5, 3),
(6, 4, 1),
(7, 1, 2),
(7, 6, 2);

Reponse 
On ne met pas NOT NULL, on utilise left join pour ne perdre aucune commande 