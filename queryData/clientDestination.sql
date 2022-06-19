-- destination de certain client
SELECT nom_ville, nom_client, prenom_client FROM client, voyage, ville,
reserver WHERE ville.id_ville = voyage.id_ville_arrivee AND 
client.id_client = reserver.id_client AND reserver.id_voyage = voyage.id_voyage ;