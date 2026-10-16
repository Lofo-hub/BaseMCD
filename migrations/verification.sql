
Etape 1
SELECT * FROM plat order by prix desc;

Etape 2 
Select c.id_categorie, c.nom_categorie , count(id_plat) As nombreplat 
from categorie c 
join plat p on c.id_categorie = p.id_categorie 
GROUP BY c.id_categorie, c.nom_categorie 
order by c.id_categorie; 
