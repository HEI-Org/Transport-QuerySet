-- place disponible à chaque vehicule
SELECT ville_depart.nom_ville AS ville_depart, ville_arrivee.nom_ville AS ville_arrivee,vl.matricule,places_dispo FROM utiliser ut
  INNER JOIN voyage vg ON ut.id_voyage = vg.id_voyage 
  INNER JOIN vehicules vl ON ut.id_vehicule = vl.id_vehicule
  INNER JOIN ville AS ville_depart ON ville_depart.id_ville = vg.id_ville_depart
  INNER JOIN ville AS ville_arrivee ON ville_arrivee.id_ville=vg.id_ville_arrivee;