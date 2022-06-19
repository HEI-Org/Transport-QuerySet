-- Affiche les clients qui non pas encore payé leur reservation

SELECT nom_client
       FROM reserver
       INNER JOIN client 
       ON reserver.id_client = client.id_client 
       WHERE montant_paye   = 0 
       GROUP BY nom_client;
