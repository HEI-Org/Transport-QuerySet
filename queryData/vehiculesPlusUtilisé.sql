--Afficher les vehicules les plus utilisés
create view countTrip
as
select matricule, count(id_voyage)
from utiliser
         inner join vehicules
                    on utiliser.id_vehicule = vehicules.id_vehicule
group by matricule;

select matricule
from countTrip
where count = (select max(count) from countTrip);

--Afficher le vehicule le plus utilisé
SELECT matricule, COUNT(vehicules.id_vehicule) as nombre_usage 
FROM vehicules
    INNER JOIN utiliser 
    INNER JOIN voyage 
        ON utiliser.id_voyage = voyage.id_voyage
        ON vehicules.id_vehicule = utiliser.id_vehicule
GROUP BY  matricule ORDER BY nombre_usage DESC LIMIT 1;
