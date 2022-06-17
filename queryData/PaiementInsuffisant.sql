--Combien de clients n'ont pas encore effectué leur payement en totalité?Lesquels?

--Sort la liste des clients
SELECT (c.nom_client ||''|| prenom_client) as nom_complet, o.type, o.tarif, reserver.montant_paye
FROM reserver
	INNER JOIN client c ON reserver.id_client = c.id_client
	INNER JOIN offre o ON reserver.id_offre = o.id_offre
where reserver.montant_paye < o.tarif
GROUP BY c.id_client,o.type, o.tarif,reserver.montant_paye;

--Sort le nombre des clients
SELECT count(reserver.id_client)
FROM reserver
	INNER JOIN offre o ON reserver.id_offre = o.id_offre
where reserver.montant_paye < o.tarif;