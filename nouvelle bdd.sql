-- ----------------------------------------------------------------------------------------------------------------------
-- CREATION DE LA BASE DE DONNEES---------------------------------------------------------------------------------------------------
-- ----------------------------------------------------------------------------------------------------------------------
CREATE DATABASE medoclab;
USE medoclab;

-- ----------------------------------------------------------------------------------------------------------------------
-- CREATION DES TABLES---------------------------------------------------------------------------------------------------
-- ----------------------------------------------------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS forme(
	identifiant INT NOT NULL auto_increment,
	nom VARCHAR(50),
	CONSTRAINT pk_forme PRIMARY KEY (identifiant)
)ENGINE=InnoDB;



-- ----------------------------------------------------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS effet_indesirable(
	identifiant INT NOT NULL auto_increment,
	nom VARCHAR(50),
	CONSTRAINT pk_effet_indesirable PRIMARY KEY (identifiant)
)ENGINE=InnoDB;

-- ----------------------------------------------------------------------------------------------------------------------


CREATE TABLE IF NOT EXISTS mode_admin(
	identifiant INT NOT NULL auto_increment,
	nom VARCHAR(50),
	CONSTRAINT pk_mode_admin PRIMARY KEY (identifiant)
)ENGINE=InnoDB;

-- ----------------------------------------------------------------------------------------------------------------------



CREATE TABLE IF NOT EXISTS medicament(
	identifiant INT NOT NULL auto_increment,
	nom VARCHAR(50) unique,
	dateBrevet datetime,
	dateAMM datetime,
	dateRetrait datetime,
	idForme INT NOT NULL,
	idEffetIndesirable INT NOT NULL,
	idModeAdmin INT NOT NULL,
	CONSTRAINT pk_medicament PRIMARY KEY (identifiant),
	CONSTRAINT fk_medicament_forme FOREIGN KEY (idForme) REFERENCES forme (identifiant),
	CONSTRAINT fk_medicament_effet_indesirable FOREIGN KEY (idEffetIndesirable) REFERENCES effet_indesirable (identifiant),
	CONSTRAINT fk_medicament_mode_admin FOREIGN KEY (idModeAdmin) REFERENCES mode_admin (identifiant)
)ENGINE=InnoDB;



-- ----------------------------------------------------------------------------------------------------------------------
-- INSERTION DES TUPLES--------------------------------------------------------------------------------------------------
-- ----------------------------------------------------------------------------------------------------------------------


-- Inserts forme --
INSERT INTO forme (nom) VALUES ('Comprimé');
INSERT INTO forme (nom) VALUES ('Gélule');
INSERT INTO forme (nom) VALUES ('Solution');
INSERT INTO forme (nom) VALUES ('Poudre');



-- Inserts effet_indesirable --
INSERT INTO effet_indesirable (identifiant, nom) VALUES (1, 'diarrhée');
INSERT INTO effet_indesirable (identifiant, nom) VALUES (2, 'nausée');
INSERT INTO effet_indesirable (identifiant, nom) VALUES (3, 'vomissement');
INSERT INTO effet_indesirable (identifiant, nom) VALUES (4, 'douleur au ventre');
INSERT INTO effet_indesirable (identifiant, nom) VALUES (5, 'rétention d urine');
INSERT INTO effet_indesirable (identifiant, nom) VALUES (6, 'coloration d urine');
INSERT INTO effet_indesirable (identifiant, nom) VALUES (7, 'rougeurs');
INSERT INTO effet_indesirable (identifiant, nom) VALUES (8, 'plaques');
INSERT INTO effet_indesirable (identifiant, nom) VALUES (9, 'acnée');
INSERT INTO effet_indesirable (identifiant, nom) VALUES (10, 'vision floue');
INSERT INTO effet_indesirable (identifiant, nom) VALUES (11, 'démangeaisons');



-- Inserts mode_admin --
INSERT INTO mode_admin (identifiant, nom) VALUES (1, 'Voie intraveineuse');
INSERT INTO mode_admin (identifiant, nom) VALUES (2, 'Voie sous-cutanée');
INSERT INTO mode_admin (identifiant, nom) VALUES (3, 'Intramusculaire');
INSERT INTO mode_admin (identifiant, nom) VALUES (4, 'Sublinguale');
INSERT INTO mode_admin (identifiant, nom) VALUES (5, 'Rectale');
INSERT INTO mode_admin (identifiant, nom) VALUES (6, 'Vaginale');
INSERT INTO mode_admin (identifiant, nom) VALUES (7, 'Nasale');
INSERT INTO mode_admin (identifiant, nom) VALUES (8, 'Oculaire');
INSERT INTO mode_admin (identifiant, nom) VALUES (9, 'Percutanée');
INSERT INTO mode_admin (identifiant, nom) VALUES (10, 'Pulmonaire');



-- Insert medicament --
INSERT INTO medicament (identifiant, nom, dateBrevet, dateAMM, dateRetrait, idForme, idEffetIndesirable, idModeAdmin) VALUES (1, 'RETROVIR', '1995-05-12 00:00:00', '1996-11-27 00:00:00', NULL, 2, 1, 1);
INSERT INTO medicament (identifiant, nom, dateBrevet, dateAMM, dateRetrait, idForme, idEffetIndesirable, idModeAdmin) VALUES (2, 'ALKERAN', '1997-02-16 00:00:00', '2001-11-21 00:00:00', NULL, 3, 2, 2);
INSERT INTO medicament (identifiant, nom, dateBrevet, dateAMM, dateRetrait, idForme, idEffetIndesirable, idModeAdmin) VALUES (3, 'EPIVIR', NULL, '2010-04-18 00:00:00', NULL, 3, 3, 3);
INSERT INTO medicament (identifiant, nom, dateBrevet, dateAMM, dateRetrait, idForme, idEffetIndesirable, idModeAdmin) VALUES (4, 'FLOLAN', NULL, '2003-01-16 00:00:00', NULL, 4, 4, 4);
INSERT INTO medicament (identifiant, nom, dateBrevet, dateAMM, dateRetrait, idForme, idEffetIndesirable, idModeAdmin) VALUES (5, 'HYCAMTIN', NULL, '2000-10-05 00:00:00', NULL, 4, 5, 5);
INSERT INTO medicament (identifiant, nom, dateBrevet, dateAMM, dateRetrait, idForme, idEffetIndesirable, idModeAdmin) VALUES (6, 'ESKAZOLE', '2002-02-07 00:00:00', '2008-10-04 00:00:00', NULL, 1, 6, 6);
INSERT INTO medicament (identifiant, nom, dateBrevet, dateAMM, dateRetrait, idForme, idEffetIndesirable, idModeAdmin) VALUES (7, 'VENTOLINE', NULL, '2013-02-05 00:00:00', NULL, 3, 7, 7);
INSERT INTO medicament (identifiant, nom, dateBrevet, dateAMM, dateRetrait, idForme, idEffetIndesirable, idModeAdmin) VALUES (8, 'ZIAGEN', '2001-03-03 00:00:00', '2009-10-15 00:00:00', NULL, 1, 8, 8);
INSERT INTO medicament (identifiant, nom, dateBrevet, dateAMM, dateRetrait, idForme, idEffetIndesirable, idModeAdmin) VALUES (9, 'ZEFFIX', NULL, '2004-02-11 00:00:00', NULL, 1, 9, 9);
INSERT INTO medicament (identifiant, nom, dateBrevet, dateAMM, dateRetrait, idForme, idEffetIndesirable, idModeAdmin) VALUES (10, 'TELZIR', '2009-03-15 00:00:00', NULL, NULL, 1, 11, 10);
INSERT INTO medicament (identifiant, nom, dateBrevet, dateAMM, dateRetrait, idForme, idEffetIndesirable, idModeAdmin) VALUES (11, 'ATRIANCE', '2003-05-14 00:00:00', '2009-11-25 00:00:00', NULL, 3, 10, 8);
INSERT INTO medicament (identifiant, nom, dateBrevet, dateAMM, dateRetrait, idForme, idEffetIndesirable, idModeAdmin) VALUES (12, 'VOLIBRIS', '2004-08-17 00:00:00', '2008-08-06 00:00:00', NULL, 1, 3, 3);
INSERT INTO medicament (identifiant, nom, dateBrevet, dateAMM, dateRetrait, idForme, idEffetIndesirable, idModeAdmin) VALUES (13, 'LAMIVUDINE', NULL, '2009-01-09 00:00:00', NULL, 1, 8, 4);
INSERT INTO medicament (identifiant, nom, dateBrevet, dateAMM, dateRetrait, idForme, idEffetIndesirable, idModeAdmin) VALUES (14, 'TAFINLAR', '2007-03-23 00:00:00', '2008-04-18 00:00:00', NULL, 2, 10, 1);
INSERT INTO medicament (identifiant, nom, dateBrevet, dateAMM, dateRetrait, idForme, idEffetIndesirable, idModeAdmin) VALUES (15, 'zefzef', NULL, NULL, NULL, 1, 3, 7);
INSERT INTO medicament (identifiant, nom, dateBrevet, dateAMM, dateRetrait, idForme, idEffetIndesirable, idModeAdmin) VALUES (16, 'ggggggg', '2006-10-20 00:00:00', NULL, NULL, 2, 7, 3);
