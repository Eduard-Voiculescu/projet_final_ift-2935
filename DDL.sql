-- DDL.sql
-- IFT 2935 - Projet Final
-- Félix Adam - 20065738
-- Zakaria Bounouar - 20026947
-- Sami Steenhaut - 20061630
-- Eduard Voiculescu - 20078235
-- Toutes les commandes pour la création des tables

CREATE TABLE pf.Utilisateur (
	id SERIAL PRIMARY KEY,
	nom VARCHAR(30) NOT NULL, 
	prenom VARCHAR(30) NOT NULL,
	motdepasse VARCHAR NOT NULL,
	courriel VARCHAR(30) NOT NULL,
	num_telephone VARCHAR(30) NOT NULL
);

CREATE TABLE pf.Partage (
	partageur_uid INTEGER ,
	profiteur_uid INTEGER NOT NULL,
	obj_id INTEGER NOT NULL,
	disponible BOOLEAN,
	duree_debut_ DATE NOT NULL,
	duree_fin DATE,
	PRIMARY KEY (partageur_uid, obj_id),
	FOREIGN KEY (partageur_uid) REFERENCES pf.Utilisateur(id),
	FOREIGN KEY(profiteur_uid) REFERENCES pf.Utilisateur(id),
	FOREIGN KEY (obj_id) REFERENCES pf.Objet(obj_id) ON DELETE CASCADE
);


CREATE TABLE pf.Objet (
	obj_id SERIAL PRIMARY KEY,
	nom VARCHAR(30) NOT NULL,
	description TEXT,
	prix NUMERIC NOT NULL,
	location_numero VARCHAR(30) NOT NULL,
	location_rue VARCHAR(30) NOT NULL,
	location_code_postal VARCHAR(30) NOT NULL,
	location_ville VARCHAR(30) NOT NULL,
	location_province VARCHAR(30) NOT NULL,
	type VARCHAR(30) NOT NULL,
	location_pays VARCHAR(30) NOT NULL,
	CONSTRAINT type_objet CHECK (
	type IN('Voiture','Meuble','Livre','Nourriture'))
);

CREATE TABLE pf.Voiture (
	v_id INTEGER NOT NULL,
	modele VARCHAR(30) NOT NULL,
	marque VARCHAR(30) NOT NULL,
	année INTEGER NOT NULL,
	couleur VARCHAR(30),
	kilometrage INTEGER,
	transmission VARCHAR(30),
	PRIMARY KEY (v_id),
	FOREIGN KEY (v_id) REFERENCES pf.Objet(obj_id) ON DELETE CASCADE
);

CREATE TABLE pf.Meuble (
	m_id INTEGER NOT NULL,
	type VARCHAR(30) NOT NULL,
	usage VARCHAR(30) NOT NULL,
	matériel VARCHAR(30),
	couleur VARCHAR(30),
	PRIMARY KEY (m_id),
	FOREIGN KEY (m_id) REFERENCES pf.Objet(obj_id) ON DELETE CASCADE
); 

CREATE TABLE pf.Livre (
	l_id INTEGER NOT NULL, 
	titre VARCHAR(100) NOT NULL,
	auteur VARCHAR(30) NOT NULL,
	Année INTEGER,
	langue VARCHAR(30),
	PRIMARY KEY (l_id),
	FOREIGN KEY (l_id) REFERENCES pf.Objet(obj_id) ON DELETE CASCADE
);

CREATE TABLE pf.Nourriture (
	n_id INTEGER NOT NULL,
	date_exp DATE NOT NULL,
	PRIMARY KEY (n_id),
	FOREIGN KEY (n_id) REFERENCES pf.Objet(obj_id) ON DELETE CASCADE
);

CREATE TABLE pf.Voiture (
	v_id INTEGER NOT NULL,
	modele VARCHAR(30) NOT NULL,
	marque VARCHAR(30) NOT NULL,
	année INTEGER NOT NULL,
	couleur VARCHAR(30),
	kilometrage INTEGER,
	transmission VARCHAR(30),
	PRIMARY KEY (v_id),
	FOREIGN KEY (v_id) REFERENCES pf.Objet(obj_id) ON DELETE CASCADE
);

