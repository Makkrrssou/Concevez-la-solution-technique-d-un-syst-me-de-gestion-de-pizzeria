
CREATE TABLE stock (
                idproduit INT NOT NULL,
                nom VARCHAR(1000) NOT NULL,
                quantit INT NOT NULL,
                PRIMARY KEY (idproduit)
);


CREATE TABLE pizza (
                idpizza INT NOT NULL,
                nom VARCHAR(1000) NOT NULL,
                PHT DOUBLE PRECISIONS NOT NULL,
                PRIMARY KEY (idpizza)
);


CREATE TABLE ingrdient (
                idproduit INT NOT NULL,
                idpizza INT NOT NULL,
                PRIMARY KEY (idproduit, idpizza)
);


CREATE TABLE client (
                idclient INT NOT NULL,
                nom VARCHAR(1000) NOT NULL,
                prenom VARCHAR(1000) NOT NULL,
                email VARCHAR(1000) NOT NULL,
                num_rue INT NOT NULL,
                localisation VARCHAR(1000) NOT NULL,
                commune VARCHAR(1000) NOT NULL,
                code_postal INT NOT NULL,
                PRIMARY KEY (idclient)
);


CREATE TABLE livreur (
                idlivreur INT NOT NULL,
                nom VARCHAR(1000) NOT NULL,
                prenom VARCHAR(1000) NOT NULL,
                PRIMARY KEY (idlivreur)
);


CREATE TABLE pizzaiolo (
                idpizzaiolo INT NOT NULL,
                nom VARCHAR(1000) NOT NULL,
                prenom VARCHAR(1000) NOT NULL,
                PRIMARY KEY (idpizzaiolo)
);


CREATE TABLE commande (
                idcommande INT NOT NULL,
                montant DOUBLE PRECISIONS NOT NULL,
                idclient INT NOT NULL,
                idlivreur INT NOT NULL,
                idpizzaiolo INT NOT NULL,
                PRIMARY KEY (idcommande)
);


CREATE TABLE choix (
                idchoix INT AUTO_INCREMENT NOT NULL,
                idpizza INT NOT NULL,
                idcommande INT NOT NULL,
                PRIMARY KEY (idchoix)
);


ALTER TABLE ingrdient ADD CONSTRAINT stock_ingrédient_fk
FOREIGN KEY (idproduit)
REFERENCES stock (idproduit)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE ingrdient ADD CONSTRAINT pizza_ingrédient_fk
FOREIGN KEY (idpizza)
REFERENCES pizza (idpizza)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE choix ADD CONSTRAINT pizza_choix_fk
FOREIGN KEY (idpizza)
REFERENCES pizza (idpizza)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE commande ADD CONSTRAINT client_commande_fk
FOREIGN KEY (idclient)
REFERENCES client (idclient)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE commande ADD CONSTRAINT livreur_commande_fk
FOREIGN KEY (idlivreur)
REFERENCES livreur (idlivreur)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE commande ADD CONSTRAINT pizzaiolo_commande_fk
FOREIGN KEY (idpizzaiolo)
REFERENCES pizzaiolo (idpizzaiolo)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE choix ADD CONSTRAINT commande_choix_fk
FOREIGN KEY (idcommande)
REFERENCES commande (idcommande)
ON DELETE NO ACTION
ON UPDATE NO ACTION;
