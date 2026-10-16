
Etape 1
SELECT * FROM plat order by prix desc;

Etape 2 
Select c.id_categorie, c.nom_categorie , count(id_plat) As nombreplat 
from categorie c 
join plat p on c.id_categorie = p.id_categorie 
GROUP BY c.id_categorie, c.nom_categorie 
order by c.id_categorie; 

Etape 3

Select c.id_commande , SUM(p.prix * cd.quantite)
from commande c
join commandeDetail cd on c.id_commande = cd.id_commande 
join plat p on cd.id_plat = p.id_plat 
group by c.id_commande;


Etape 4 
Select c.id_commande, COALESCE(cl.nom_client , 'client de passage') AS nom_client 
from commande c 
left join client cl on c.id_client = cl.id_client
GROUP BY c.id_commande, cl.nom_client 
order by c.id_commande; 