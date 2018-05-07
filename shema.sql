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

INSERT INTO pf.Utilisateur (nom, prenom, courriel, num_telephone,motdepasse)
VALUES
('Bédard', 'Jean', 'jean_bedard@hotmail.com', '514-785-9625','fasfds'),
('Bilodeau', 'Pierre', 'pierre_bilodeau@gmail.com', '438-823-2843','sdasda'),
('Nadeau', 'Marie-Pierre', 'mp_nadeau@msn.com', '514-238-2384','wqrewqr32'),
('Lévesque', 'Nadia', 'levesquen@hotmail.com', '514-234-2355','3298rfj'),
('Girard', 'Mario', 'mariogirard@gmail.com', '438-842-2458','anfdia4'),
('Côté', 'Marc-André', 'ma_cote@gmail.com', '514-549-4235','3893209nispe'),
('Pothier', 'Maude', 'mpothier@msn.com', '450-542-2359','erematekin'),
('Cyr', 'Mélanie', 'mcyr@gmail.com', '514-543-5423','asf3j29jk'),
('Perrin', 'Denis', 'perrin_denis@yahoo.ca', '450-344-2435','sdnfis399'),
('Neal', 'James', 'james_neal@gmail.com', '514-324-5245','mfchehexd'),
('Fleury', 'Antoine', 'afleury@gmail.com', '514-325-1254','nerfteemo'),
('El-Khouri', 'Nadia', 'nad_el_khouri@hotmail.com', '450-225-2565','eduardbronze5'),
('Michaud', 'François', 'f_mich@msn.com', '514-445-2356','vatisluv'),
('Cardinal', 'Marlène', 'm_card@hotmail.com', '438-823-2356','godsplan'),
('Beauchemin', 'Luc', 'l_beauchemin@yahoo.ca', '514-425-5256','mainyasuo');

INSERT INTO pf.Objet (nom, description, prix, location_numero, location_rue, location_code_postal, location_ville, location_province, location_pays,type)
VALUES
('Mazda 3 2009', '200 000 kilomètres', 2500, '345', 'Saint-Antoine', 'H5T 2D3', 'Montréal', 'Québec', 'Canada','Voiture'),
('BMW M3 2010', '125 000 kilo', 12000, '456', 'Henri-Bourassa', 'H3L 2Y4', 'Montréal', 'Québec', 'Canada','Voiture'),
('Nissan Micra S 2015', '39 000 kilo', 8500, '2500', 'rue Millen', 'H2L 2r5', 'Montréal', 'Québec', 'Canada','Voiture'),
('Chevrolet Sonic', 'Climatiseur', 8995, '1234', 'rue Saint-Laurent', 'F4R 2E3', 'Montréal', 'Québec', 'Canada','Voiture'),
('Hyundai Accent L 2015', 'Radio AM/FM CD, Ports USB', 9995, '5467', 'Georges-Baril', 'I4F 2R4', 'Montréal', 'Québec', 'Canada','Voiture'),
('Table de chevet', 'Bon état, négociable', 50, '133', 'rue Sauvé', 'J3R 2T4', 'Montréal, 'Québec', 'Canada','Meuble'),
('Îlot de cuisine', 'Très bon état', 150, '125', 'avenue Lacadie', 'R3T 5Y4', 'Montréal', 'Québec', 'Canada','Meuble'),
('Lit queen', 'Vient avec matelas et sommier', 450, '250', 'Fleury ouest', 'R3T 5Y5', 'Montréal', 'Québec', 'Canada', 'Meuble'),
('Table basse de salon', 'Fait en chêne, négociable', 175, '5649', 'Mentana', 'D4G 5G4', 'Montréal', 'Québec', 'Canada','Meuble'),
('Bibliothèque', '6,5 pieds de haut, 3 pieds de large', 90, '1234', 'rue Cartier', 'H3L 4T4', 'Montréal', 'Québec', 'Canada','Meuble'),
('Table de patio avec chaises', 'Vient avec 4 chaises et le parasol', 275, '4500', 'avenue Papineau', 'D3T 2T5', 'Montréal', 'Québec', 'Canada', 'Meuble'),
('Chaise de bureau', 'Dossier ergonomique, à roulette, négociable', 75, '2500', 'avenue de Lorimier', 'F3T 2Y5', 'Montréal', 'Québec', 'Canada', 'Meuble'),
('Tintin en Amérique', 'Usagé', 5, '450', 'avenue du Parc', 'K2R 5T2', 'Montréal', 'Québec', 'Canada', 'Livre'),
('Trilogie du Seigneur des Anneaux', 'Traduit en français', 40, '3400', 'rue Parthenais', 'H2LW4F', 'Montréal', 'Québec', 'Canada','Livre'),
('La guerre des Mondes', 'version originale', 10, '1200', 'avenue du Parc', 'H3C2R5', 'Montréal', 'Québec', 'Canada','Livre'),
('Dune', 'version originale', 10, '2500', 'rue Beaubien', 'H1R 2R5', 'Montréal', 'Québec', 'Canada','Livre'),
('Les robots', 'en Latin', 15, '7800', 'St-Zotique', 'H4R 4L0', 'Montréal', 'Québec', 'Canada', 'Livre'),
('Sapiens', 'neuf', 40, '3400', 'rue Mozart', 'J3L 2T5', 'Montréal', 'Québec', 'Canada','Livre'),
('10 livres de patate', 'Trop de patates, il faut s'en débarasser', 0, '14', 'rue Crescent', 'J4R 2R5', 'Montréal', 'Québec', 'Canada','Nourriture'),
('Des cannes de binne', 'Il reste un an avant expiration', 0, '125', 'rue Saint-Urbain', 'J3L 4Y5', 'Montréal', 'Québec', 'Canada','Nourriture'),
('De la soupe au chou', 'Tres bonne', 0, '3456', 'rue Saint-Armand', 'Y5R T6V', 'Laval', 'Québec', 'Canada','Nourriture'),
('Des boîtes de jello', 'Rouge et orange', 0, '1246', 'Crémazie', 'G4F Y5T', 'Montréal', 'Québec', 'Canada','Nourriture');

INSERT INTO pf.Partage
VALUES
(34,36,88,true,'2018-05-06','2019-05-06'),
(35,34,89,true,'2018-04-06','2029-05-06'),
(36,48,90,true,'2018-05-02','2020-05-06'),
(37,45,91,true,'2018-01-01','2019-05-06'),
(38,41,92,true,'2018-02-06','2019-08-06'),
(39,46,93,true,'2018-03-06','2019-12-06'),
(41,35,94,true,'2018-05-06','2019-01-06'),
(42,40,95,true,'2018-05-01','2019-09-06'),
(43,47,96,true,'2018-05-06','2019-09-16'),
(44,43,97,true,'2018-01-03','2022-12-06'),
(45,42,98,true,'2018-05-06','2019-05-06'),
(46,37,99,true,'2018-03-08','2028-05-06'),
(47,38,100,true,'2018-02-25','2039-05-06'),
(48,39,101,true,'2018-04-16','2199-05-06'),
(40,44,102,true,'2018-02-12','2999-05-06');


INSERT INTO pf.Voiture
VALUES
(88,'Mazda','3',2009,'rose',200000,'automatique'),
(89,'BMW','M3',2010,'magenta',125000,'manuelle'),
(90,'Nissan','Micra S',2015,'bleu',39000,'automatique'),
(91,'Chevrolet','Sonic',2001,'jaune',250000,'manuelle'),
(92,'Hyundai','Accent L',2015,'rouge',32021,'automatique');


INSERT INTO pf.Meuble
VALUES
(93,'Table basse','7 ans','Chêne','brun'),
(100,'Table patio et chaises','3 ans','Métal','gris'),
(101,'Bibliothèque','1 ans','Merisier','Noir'),
(102,'Lit queen','25 ans','Bambou','brun pale');

INSERT INTO pf.Livre
VALUES
(94,'La guerre des Mondes','Pierre Duvernay',1995,'Allemand'),
(95,'Dune','Mohamed El Sahara',2001,'Arabe classique'),
(96,'Les robots','Paviocci Linguini',2016,'Latin');

INSERT INTO pf.Nourriture
VALUES
(96,'2021-12-20'),
(97,'2054-10-25'),
(98,'2018-05-09');
