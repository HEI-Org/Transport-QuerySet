--Afficher les véhicules les plus utilisés

--créer un table temporaire qui stocke l'id_offre la plus achetée
create view MaximOffre as select reserver.id_offre , count(*) 
from reserver GROUP BY reserver.id_offre ORDER BY count DESC limit 1;

--Puis la séléctionnée en le groupant par type 
select type , count from MaximOffre 
INNER JOIN offre 
ON MaximOffre.id_offre = offre.id_offre
GROUP BY MaximOffre.count , type ;