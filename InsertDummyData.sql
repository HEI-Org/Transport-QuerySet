-- insert ville
insert into ville (nom_ville) values ('Antananarivo');
insert into ville (nom_ville) values ('Brickaville');
insert into ville (nom_ville) values ('Tamatave');
insert into ville (nom_ville) values ('Antsiranana');
insert into ville (nom_ville) values ('Toliara');
insert into ville (nom_ville) values ('Majunga');
insert into ville (nom_ville) values ('Foulpointe');
insert into ville (nom_ville) values ('Fianarantsoa');
insert into ville (nom_ville) values ('Mantasoa');
insert into ville (nom_ville) values ('Morondava');

-- insert chauffeur
insert into chauffeur (nom_complet, contact_chauffeur, mail_chauffeur, id_vehicule) values ('RAKOTONDRINA Paul', '033 12 365 15', 'ndrina@gmail.com', 1);
insert into chauffeur (nom_complet, contact_chauffeur, mail_chauffeur, id_vehicule) values ('KOTO Nato', '034 56 566 54', 'nato@gmail.com', 2);
insert into chauffeur (nom_complet, contact_chauffeur, mail_chauffeur, id_vehicule) values ('BAKO Harry', '033 12 895 52', 'harrylepapa@gmail.com', 3);
insert into chauffeur (nom_complet, contact_chauffeur, mail_chauffeur, id_vehicule) values ('KATY Ilo', '032 89 456 12', 'ilo@gmail.com', 4);
insert into chauffeur (nom_complet, contact_chauffeur, mail_chauffeur, id_vehicule) values ('ALAIN Botrix', '033 25 789 52', 'botrix@gmail.com', 5);
insert into chauffeur (nom_complet, contact_chauffeur, mail_chauffeur, id_vehicule) values ('MAMY Gervé', '033 26 369 98', 'gery@gmail.com', 6);
insert into chauffeur (nom_complet, contact_chauffeur, mail_chauffeur, id_vehicule) values ('Lissy Edelman', '038 59 698 23', 'lissy@gmail.com', 7);
insert into chauffeur (nom_complet, contact_chauffeur, mail_chauffeur, id_vehicule) values ('JONATHAN', '032 12 145 25', 'jo@gmail.com', 8);
insert into chauffeur (nom_complet, contact_chauffeur, mail_chauffeur, id_vehicule) values ('FANIRY Jess', '033 23 123 32', 'jess@gmail.com', 9);
insert into chauffeur (nom_complet, contact_chauffeur, mail_chauffeur, id_vehicule) values ('ANDRY Fetra', '033 25 258 85', 'andry@gmail.com', 10);

-- insert reserver
insert into reserver (id_client, id_offre, id_voyage, place, date_reservation, montant_paye) values (1, 4, 161, 1, '2022-10-01',40000);
insert into reserver (id_client, id_offre, id_voyage, place, date_reservation, montant_paye) values (2, 4, 161, 2, '2022-10-09',40000);
insert into reserver (id_client, id_offre, id_voyage, place, date_reservation, montant_paye) values (3, 4, 161, 1, '2022-10-25',20000);
insert into reserver (id_client, id_offre, id_voyage, place, date_reservation, montant_paye) values (4, 4, 161, 1, '2022-10-09',40000);
insert into reserver (id_client, id_offre, id_voyage, place, date_reservation, montant_paye) values (5, 4, 161, 3, '2022-10-09',40000);
insert into reserver (id_client, id_offre, id_voyage, place, date_reservation, montant_paye) values (6, 4, 161, 2, '2022-10-01',40000);
insert into reserver (id_client, id_offre, id_voyage, place, date_reservation, montant_paye) values (7, 4, 161, 1, '2022-10-05',20000);
insert into reserver (id_client, id_offre, id_voyage, place, date_reservation, montant_paye) values (8, 4, 161, 1, '2022-10-22',40000);
insert into reserver (id_client, id_offre, id_voyage, place, date_reservation, montant_paye) values (9, 4, 161, 1, '2022-10-02',40000);
insert into reserver (id_client, id_offre, id_voyage, place, date_reservation, montant_paye) values (10, 4, 161, 1, '2022-10-04',40000);

-- insert vehicules
insert into vehicules (nombre_places, places_dispo, matricule) values (24, 0, '1236321');
insert into vehicules (nombre_places, places_dispo, matricule) values (24, 2, '8663633');
insert into vehicules (nombre_places, places_dispo, matricule) values (24, 0, '3412509');
insert into vehicules (nombre_places, places_dispo, matricule) values (24, 0, '2653955');
insert into vehicules (nombre_places, places_dispo, matricule) values (24, 0, '5582044');
insert into vehicules (nombre_places, places_dispo, matricule) values (24, 0, '5896222');
insert into vehicules (nombre_places, places_dispo, matricule) values (24, 7, '4935453');
insert into vehicules (nombre_places, places_dispo, matricule) values (24, 8, '4725919');
insert into vehicules (nombre_places, places_dispo, matricule) values (24, 9, '4808146');
insert into vehicules (nombre_places, places_dispo, matricule) values (24, 10, '4275558');

-- insert utiliser
insert into utiliser (id_vehicule, id_voyage) values (1, 2);
insert into utiliser (id_vehicule, id_voyage) values (2, 3);
insert into utiliser (id_vehicule, id_voyage) values (3, 5);
insert into utiliser (id_vehicule, id_voyage) values (4, 7);
insert into utiliser (id_vehicule, id_voyage) values (5, 4);
insert into utiliser (id_vehicule, id_voyage) values (6, 10);
insert into utiliser (id_vehicule, id_voyage) values (9, 6);
insert into utiliser (id_vehicule, id_voyage) values (10, 1);

-- insert passer par
insert into passer_par (id_ville, id_voyage) values (2,130);
insert into passer_par (id_ville, id_voyage) values (10,130);
insert into passer_par (id_ville, id_voyage) values (6,130);
insert into passer_par (id_ville, id_voyage) values (1,130);
insert into passer_par (id_ville, id_voyage) values (4,17);
insert into passer_par (id_ville, id_voyage) values (5,17);
insert into passer_par (id_ville, id_voyage) values (3,17);