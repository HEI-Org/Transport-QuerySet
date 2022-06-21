-- afficher le vehicule qui a eu besoin de plus de maintenance.

select matricule, count (vehicules.id_vehicule) from requerir
	inner join vehicules on vehicules.id_vehicule = requerir.id_vehicule
	inner join maintenance on requerir.id_maintenance = maintenance.id_maintenance
group by vehicules.id_vehicule order by count desc limit 1;