-- Afficher les depart de nuit --

SELECT * FROM voyage WHERE heure_depart <= '06:00 AM' AND heure_depart >= '05:59 PM' ;