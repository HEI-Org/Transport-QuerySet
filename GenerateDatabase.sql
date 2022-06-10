-- CREATE DATABASE transport;

-- Connecting to the database
-- \c

-- table vehicules
CREATE TABLE vehicules(
    id_vehicule serial PRIMARY KEY, 
    nombre_places int check(nombre_places > 0),
    places_dispo int check(places_dispo <= nombre_places),
    matricule varchar(8) unique
);

-- table chauffeur
CREATE TABLE chauffeur(
    id_chauffeur serial PRIMARY KEY,
    nom_complet varchar(150) NOT NULL,
    contact_chauffeur varchar(15) NOT NULL,
    mail_chauffeur varchar(130),
    id_vehicule int REFERENCES vehicules(id_vehicule)
);

-- table maintenance 
CREATE TABLE maintenance(
    id_maintenance bigserial PRIMARY KEY,
    cout int check(cout >= 0),
    nom_maintenance VARCHAR(100)
);

-- table ville 
CREATE TABLE ville(
    id_ville serial PRIMARY KEY,
    nom_ville varchar(30) not null
);

-- table client 
CREATE TABLE client(
    id_client bigserial PRIMARY KEY,
    nom_client varchar(100),
    prenom_client varchar(100),
    contact varchar(14)
);

-- table offre
CREATE TABLE offre(
    id_offre serial primary key, 
    type varchar(20),
    tarif int check(tarif > 0) not null
);

-- table voyage 
CREATE TABLE voyage(
    id_voyage bigserial primary key, 
    jour_depart date not null,
    heure_depart time,
    id_ville_depart int NOT NULL REFERENCES ville(id_ville),
    id_ville_arrivee int NOT NULL REFERENCES ville(id_ville)
);

-- table utiliser 
CREATE TABLE utiliser(
    id_vehicule int REFERENCES vehicules(id_vehicule) NOT NULL,
    id_voyage int REFERENCES voyage(id_voyage) NOT NULL,
    UNIQUE(id_vehicule, id_voyage)
);

-- table passer par 
CREATE TABLE passer_par(
    id_ville int REFERENCES ville(id_ville) not null,
    id_voyage int REFERENCES voyage(id_voyage) not null,
    UNIQUE (id_ville, id_voyage)
);

-- table reserver 
CREATE TABLE reserver(
    id_client int REFERENCES client(id_client),
    id_offre int REFERENCES offre(id_offre),
    id_voyage int REFERENCES voyage(id_voyage),
    place int not null,
    date_reservation date DEFAULT current_date,
    montant_paye int not null check(montant_paye > 0)
);

-- table requerir 
CREATE TABLE requerir(
    id_maintenance int not null REFERENCES maintenance(id_maintenance) not null,
    id_vehicule int not null REFERENCES vehicules(id_vehicule) not null,
    unique(id_maintenance,id_vehicule),
    nom_maintenance VARCHAR(100)
);
