--les Reservations d'un client

SELECT (c.nom_client ||''|| prenom_client) as nom_complet, reserver.date_reservation,reserver.place, 
o.tarif, o.type,reserver.montant_paye, ville_depart.nom_ville as ville_depart, ville_arrivee.nom_ville as ville_arrivee
FROM reserver 
	INNER JOIN client c ON reserver.id_client = c.id_client 
	INNER JOIN offre o ON reserver.id_offre = o.id_offre
	INNER JOIN voyage v ON reserver.id_voyage = v.id_voyage
	INNER JOIN ville ville_depart ON v.id_voyage = ville_depart.id_ville
	INNER JOIN ville ville_arrivee ON v.id_ville_arrivee = ville_arrivee.id_ville
WHERE nom_client ILIKE ('atlanta');

--Remplacer atlanta par le nom du client cible
--voici un nom disponible dans la DB: Mycah