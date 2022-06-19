-- Tous les voyages durant un jour/semaine
SELECT voyage.jour_depart, ville_depart.nom_ville as ville_depart, ville_arrivee.nom_ville as ville_arrivee
FROM voyage
         INNER JOIN ville AS ville_depart
                    ON ville_depart.id_ville = voyage.id_ville_depart
         INNER JOIN ville AS ville_arrivee ON voyage.id_ville_arrivee = ville_arrivee.id_ville
--current-date+7 = semaine
WHERE jour_depart >= current_date + 7
;