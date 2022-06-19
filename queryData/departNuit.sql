-- afficher le depart du nuit


SELECT jour_depart, heure_depart, v_d.nom_ville as ville_depart, v_a.nom_ville as ville_arrivee FROM voyage
         INNER JOIN ville AS v_d ON v_d.id_ville = voyage.id_ville_depart
         INNER JOIN ville AS v_a ON v_a.id_ville = voyage.id_ville_arrivee
WHERE heure_depart >= '05:59 PM';
