--le vehicule qui n'est pas plein le jour depart

SELECT vehicules.matricule, places_dispo
FROM vehicules
         INNER JOIN utiliser u on vehicules.id_vehicule = u.id_vehicule
         INNER JOIN voyage v on u.id_voyage = v.id_voyage
WHERE places_dispo > 0
  and CURRENT_DATE >= v.jour_depart;