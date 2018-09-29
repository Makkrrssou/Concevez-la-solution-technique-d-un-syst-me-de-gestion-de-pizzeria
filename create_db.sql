
CREATE TABLE ets (
                idets INT NOT NULL,
                num_rue INT NOT NULL,
                rue VARCHAR(1000) NOT NULL,
                commune VARCHAR(1000) NOT NULL,
                code_postal INT NOT NULL,
                PRIMARY KEY (idets)
);


CREATE TABLE stock (
                idproduit INT NOT NULL,
                nom VARCHAR(1000) NOT NULL,
                quantit INT NOT NULL,
                idets INT NOT NULL,
                PRIMARY KEY (idproduit)
);


CREATE TABLE pizza (
                idpizza INT NOT NULL,
                nom VARCHAR(1000) NOT NULL,
                PHT DOUBLE PRECISIONS NOT NULL,
                PRIMARY KEY (idpizza)
);


CREATE TABLE recette (
                idrecette INT NOT NULL,
                recette JAVA_OBJECT NOT NULL,
                idpizza INT NOT NULL,
                PRIMARY KEY (idrecette)
);


CREATE TABLE ingrdient (
                idpizza INT NOT NULL,
                idproduit INT NOT NULL,
                quantite_necessaire VARCHAR NOT NULL,
                PRIMARY KEY (idpizza, idproduit)
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


CREATE TABLE commande (
                num_commande INT NOT NULL,
                montant DOUBLE PRECISIONS NOT NULL,
                quantite INT NOT NULL,
                idclient INT NOT NULL,
                idets INT NOT NULL,
                status_commande VARCHAR NOT NULL,
                PRIMARY KEY (num_commande)
);


CREATE TABLE adresse_livraison (
                num_commande INT NOT NULL,
                idclient INT NOT NULL,
                num_rue INT NOT NULL,
                localisation VARCHAR(1000) NOT NULL,
                Commune VARCHAR(1000) NOT NULL,
                code_postal VARCHAR(1000) NOT NULL,
                PRIMARY KEY (num_commande, idclient)
);


CREATE TABLE ligne_commande (
                idchoix INT AUTO_INCREMENT NOT NULL,
                quantite INT NOT NULL,
                prix VARCHAR NOT NULL,
                num_commande INT NOT NULL,
                idpizza INT NOT NULL,
                PRIMARY KEY (idchoix)
);


CREATE TABLE livreur (
                idlivreur INT NOT NULL,
                nom VARCHAR(1000) NOT NULL,
                prenom VARCHAR(1000) NOT NULL,
                idets INT NOT NULL,
                PRIMARY KEY (idlivreur)
);


CREATE TABLE pizzaiolo (
                idpizzaiolo INT NOT NULL,
                nom VARCHAR(1000) NOT NULL,
                prenom VARCHAR(1000) NOT NULL,
                idets INT NOT NULL,
                PRIMARY KEY (idpizzaiolo)
);


ALTER TABLE commande ADD CONSTRAINT ets_commande_fk
FOREIGN KEY (idets)
REFERENCES ets (idets)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE livreur ADD CONSTRAINT ets_livreur_fk
FOREIGN KEY (idets)
REFERENCES ets (idets)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE pizzaiolo ADD CONSTRAINT ets_pizzaiolo_fk
FOREIGN KEY (idets)
REFERENCES ets (idets)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE stock ADD CONSTRAINT ets_stock_fk
FOREIGN KEY (idets)
REFERENCES ets (idets)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE ingrdient ADD CONSTRAINT stock_ingrdient_fk
FOREIGN KEY (idproduit)
REFERENCES stock (idproduit)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE ligne_commande ADD CONSTRAINT pizza_ligne_commande_fk
FOREIGN KEY (idpizza)
REFERENCES pizza (idpizza)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE ingrdient ADD CONSTRAINT pizza_ingrdient_fk
FOREIGN KEY (idpizza)
REFERENCES pizza (idpizza)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE recette ADD CONSTRAINT pizza_recette_fk
FOREIGN KEY (idpizza)
REFERENCES pizza (idpizza)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE commande ADD CONSTRAINT client_commande_fk
FOREIGN KEY (idclient)
REFERENCES client (idclient)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE adresse_livraison ADD CONSTRAINT client_adresse_livraison_fk
FOREIGN KEY (idclient)
REFERENCES client (idclient)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE ligne_commande ADD CONSTRAINT commande_ligne_commande_fk
FOREIGN KEY (num_commande)
REFERENCES commande (num_commande)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE adresse_livraison ADD CONSTRAINT commande_adresse_livraison_fk
FOREIGN KEY (num_commande)
REFERENCES commande (num_commande)
ON DELETE NO ACTION
ON UPDATE NO ACTION;
