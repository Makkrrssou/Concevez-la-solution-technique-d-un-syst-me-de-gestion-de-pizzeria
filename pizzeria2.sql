INSERT INTO `client` (`idclient`, `nom`, `prenom`, `email`, `num_rue`, `localisation`, `commune`, `code_postal`) VALUES
(1, 'Skywalker', 'Luke', 'lukeskywalker@pizza.com', 8, 'Rue la force est en toi', 'Fort-de-France', 97200),
(2, 'Skywalker', 'Leia', 'leiaskywalker@pizza.com', 9, 'Rue la force est en toi', 'Fort-de-France', 97200),
(3, 'Stark', 'Tony', 'tonystark@pizza.com', 12, 'Rue des Avengers', 'Fort-de-France', 97200),
(4, 'Rodger', 'Steeve', 'steeverodger@pizza.com', 123, 'Bld du bouclier', 'Fort-de-France', 97200),
(5, 'Parker', 'Peter', 'peterparker@pizza.com', 33, 'Allee des araignees', 'Fort-de-France', 97200),
(6, 'Snow', 'Jon', 'jonsnow@pizza.com', 13, 'Rue du Mur', 'Fort-de-France', 97200),
(7, 'Lannister', 'Tyrion', 'tyrionlannister@pizza.com', 54, 'Chemin des nains', 'Fort-de-France', 97200),
(8, 'Stark', 'Sansa', 'sansastark@pizza.com', 123, 'Rue de Winterfell', 'Fort-de-France', 97200),
(9, 'Tarly', 'Samwell', 'samwelltarly@pizza.com', 15, 'Rue du Mur', 'Fort-de-France', 97200),
(10, 'Stark', 'Arya', 'aryastark@pizza.com', 125, 'Rue de Winterfell', 'Fort-de-France', 97200);

INSERT INTO `ets` (`idets`, `num_rue`, `rue`, `commune`, `code_postal`) VALUES
(1, 23, 'Rue de la Mozarella', 'Fort-de-France', 97200),
(2, 145, 'Boulevard du chorizo', 'Fort-de-France', 97200);

INSERT INTO `commande` (`num_commande`, `montant`, `quantite`, `idclient`, `idets`) VALUES
(12356, 45, 4, 1, 2),
(254414, 30, 1, 6, 1),
(332214, 50, 2, 10, 1);

INSERT INTO `pizza` (`idpizza`, `nom`, `PHT`) VALUES
(1, 'Margharita', 13),
(2, 'Reine', 12),
(3, 'Canibale', 22),
(4, 'Scandinave', 21),
(5, 'Montagnarde', 25),
(6, '4 Fromages', 17),
(7, 'Hawaienne', 19),
(8, 'Sicilienne', 20),
(9, 'Napolitaine', 29),
(10, 'Végétarienne', 25);

INSERT INTO `stock` (`idproduit`, `nom`, `quantit`,`idets`) VALUES
(1, 'Mozzarella', 500,2),
(2, 'Jambon', 500,1),
(3, 'Lardon', 500,1),
(4, 'Emmental', 500,2),
(5, 'Tomate', 500,2),
(6, 'Farine', 4000,1),
(7, 'Champignon', 250,2),
(8, 'Poivron', 300,1),
(9, 'Merguez', 1000,1),
(10, 'Chorizo', 1000,2),
(11, 'Anchois', 500,1),
(12, 'Piments', 100,2),
(13, 'Ananas', 1000,1),
(14, 'Crème fraîche', 2000,2),
(15, 'Pommes de terre', 5000,2),
(16, 'Coeur d artichaut', 1500,2),
(17, 'Brocolis', 3000,1),
(18, 'Saumon', 4000,2),
(19, 'Raclette', 2000,1);

INSERT INTO `ingrdient` (`idpizza`, `idproduit`, `quantite_necessaire`) VALUES
(1, 1, ''),
(1, 5, ''),
(1, 6, ''),
(1, 7, ''),
(2, 1, ''),
(2, 2, ''),
(2, 5, ''),
(2, 6, ''),
(2, 7, ''),
(3, 1, ''),
(3, 2, ''),
(3, 3, ''),
(3, 5, ''),
(3, 6, ''),
(3, 9, ''),
(4, 1, ''),
(4, 6, ''),
(4, 14, ''),
(4, 18, '');


INSERT INTO `ligne_commande` (`idchoix`, `quantite`, `prix`, `num_commande`, `idpizza`) VALUES
(1, 2, 20, 332214, 8),
(2, 1, 24, 12356, 2),
(3, 3, 16, 12356, 1),
(4, 1, 30, 254414, 5);

INSERT INTO `livreur` (`idlivreur`, `nom`, `prenom`, `idets`) VALUES
(1, 'Santini', 'Mario', 1),
(2, 'Garibaldi', 'Luigi', 2);

INSERT INTO `pizzaiolo` (`idpizzaiolo`, `nom`, `prenom`, `idets`) VALUES
(1, 'Bambino', 'Pepe', 1),
(2, 'Al Capone', 'Gianni', 2);
