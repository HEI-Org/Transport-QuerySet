 --sujet => "39- *Afficher tous les places reservés"

 select place , nom_client , matricule from voyage
 inner join utiliser
 on utiliser.id_voyage = voyage.id_voyage 
 inner join vehicules
 on vehicules.id_vehicule = utiliser.id_vehicule
 inner join reserver
 on voyage.id_voyage = reserver.id_voyage
 inner join client
 on reserver.id_client = client.id_client
 group by place , nom_client ,  matricule
 order by  matricule desc;
 /*sortie => 
 place | nom_client | matricule