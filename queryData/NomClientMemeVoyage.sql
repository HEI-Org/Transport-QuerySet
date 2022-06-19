-- sujet => "20- Le nom des clients qui fait le même voyage dans la même voiture"

select nom_client from client
inner join voyage
inner join reserver
on voyage.id_voyage = reserver.id_voyage
on reserver.id_client = client.id_client
inner join utiliser
on utiliser.id_voyage = voyage.id_voyage
inner join vehicules
on vehicules.id_vehicule = utiliser.id_vehicule 
--eviter les mêmes nom
GROUP BY client.id_client;

