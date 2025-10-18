DROP DATABASE IF EXISTS `AltheraLabDB`;
CREATE DATABASE `AltheraLabDB` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `AltheraLabDB`;

CREATE TABLE categorie_produit(
   id_categorie INT AUTO_INCREMENT,
   code VARCHAR(50) ,
   nom VARCHAR(100) ,
   image_path TEXT,
   PRIMARY KEY(id_categorie)
);

CREATE TABLE fiche_produit(
   id_fiche_produit INT AUTO_INCREMENT,
   code_reference VARCHAR(50)  NOT NULL,
   marque VARCHAR(50) ,
   libelle_ref VARCHAR(50) ,
   indice_performance SMALLINT NOT NULL,
   socket VARCHAR(32) ,
   ram_type VARCHAR(16) ,
   consommation_watt INT,
   gpu_taille INT,
   wattage INT,
   type_refroidissement VARCHAR(16) ,
   max_cooler_height INT,
   radiateur_taille INT,
   stockage_type VARCHAR(16) ,
   stockage_capacite INT,
   caracteristiques_json TEXT,
   id_categorie INT NOT NULL,
   PRIMARY KEY(id_fiche_produit),
   UNIQUE(code_reference),
   FOREIGN KEY(id_categorie) REFERENCES categorie_produit(id_categorie)
);

CREATE TABLE statut_commande(
   id_statut_commande INT AUTO_INCREMENT,
   libelle VARCHAR(50) ,
   PRIMARY KEY(id_statut_commande)
);

CREATE TABLE item_reduction(
   id_reduction INT AUTO_INCREMENT,
   item_type VARCHAR(50)  NOT NULL,
   item_id INT NOT NULL,
   libelle VARCHAR(50)  NOT NULL,
   taux_promotion INT NOT NULL,
   date_debut_promo DATE NOT NULL,
   date_fin_promo DATE NOT NULL,
   PRIMARY KEY(id_reduction)
);

CREATE TABLE genre_specialite(
   id_genre_specialite INT AUTO_INCREMENT,
   libelle VARCHAR(50)  NOT NULL,
   PRIMARY KEY(id_genre_specialite)
);

CREATE TABLE role(
   id_role INT AUTO_INCREMENT,
   libelle VARCHAR(50) ,
   PRIMARY KEY(id_role)
);

CREATE TABLE faq(
   id_faq INT AUTO_INCREMENT,
   question VARCHAR(300)  NOT NULL,
   reponse VARCHAR(500)  NOT NULL,
   PRIMARY KEY(id_faq)
);

CREATE TABLE categorie_ticket(
   id_categorie_ticket INT AUTO_INCREMENT,
   libelle_categorie VARCHAR(100)  NOT NULL,
   PRIMARY KEY(id_categorie_ticket)
);

CREATE TABLE tutoriel(
   id_tutoriel INT AUTO_INCREMENT,
   libelle_tutoriel VARCHAR(50)  NOT NULL,
   link_tutoriel VARCHAR(200) ,
   PRIMARY KEY(id_tutoriel)
);

CREATE TABLE statut_produit(
   id_statut_produit INT AUTO_INCREMENT,
   libelle_statut_produit VARCHAR(50) ,
   PRIMARY KEY(id_statut_produit)
);

CREATE TABLE statut_ticket(
   id_statut_ticket INT AUTO_INCREMENT,
   libelle VARCHAR(50) ,
   PRIMARY KEY(id_statut_ticket)
);

CREATE TABLE produit(
   id_produit INT AUTO_INCREMENT,
   nom VARCHAR(150) ,
   stock INT NOT NULL,
   prix INT NOT NULL,
   couleur VARCHAR(50) ,
   nb_clic INT NOT NULL,
   image_path TEXT NOT NULL,
   id_statut_produit INT NOT NULL,
   id_fiche_produit INT NOT NULL,
   PRIMARY KEY(id_produit),
   FOREIGN KEY(id_statut_produit) REFERENCES statut_produit(id_statut_produit),
   FOREIGN KEY(id_fiche_produit) REFERENCES fiche_produit(id_fiche_produit)
);

CREATE TABLE utilisateur(
   id_utilisateur INT AUTO_INCREMENT,
   pseudo VARCHAR(50)  NOT NULL,
   adresse_mail VARCHAR(50)  NOT NULL,
   mot_de_passe VARCHAR(50)  NOT NULL,
   numero_telephone VARCHAR(20)  NOT NULL,
   adresse_livraison VARCHAR(150) ,
   date_inscription DATE NOT NULL,
   est_suspendu BOOLEAN NOT NULL,
   is_connected BOOLEAN NOT NULL,
   id_role INT NOT NULL,
   PRIMARY KEY(id_utilisateur),
   UNIQUE(adresse_mail),
   UNIQUE(numero_telephone),
   FOREIGN KEY(id_role) REFERENCES role(id_role)
);

CREATE TABLE carte_paiement(
   id_carte_paiement INT AUTO_INCREMENT,
   numero_carte VARCHAR(20) ,
   nom_carte VARCHAR(50) ,
   date_expiration_carte VARCHAR(10) ,
   ccv VARCHAR(4) ,
   is_default BOOLEAN,
   id_utilisateur INT NOT NULL,
   PRIMARY KEY(id_carte_paiement),
   FOREIGN KEY(id_utilisateur) REFERENCES utilisateur(id_utilisateur)
);

CREATE TABLE configuration(
   id_configuration INT AUTO_INCREMENT,
   libelle_configuration VARCHAR(150)  NOT NULL,
   is_predefinie BOOLEAN NOT NULL,
   date_creation DATETIME NOT NULL,
   id_utilisateur INT NOT NULL,
   PRIMARY KEY(id_configuration),
   FOREIGN KEY(id_utilisateur) REFERENCES utilisateur(id_utilisateur)
);

CREATE TABLE item_panier(
   id_item_panier INT AUTO_INCREMENT,
   item_type VARCHAR(50)  NOT NULL,
   item_id INT,
   quantite INT NOT NULL,
   id_utilisateur INT NOT NULL,
   PRIMARY KEY(id_item_panier),
   FOREIGN KEY(id_utilisateur) REFERENCES utilisateur(id_utilisateur)
);

CREATE TABLE commande(
   id_commande INT AUTO_INCREMENT,
   adresse_livraison VARCHAR(250)  NOT NULL,
   reference_commande VARCHAR(50)  NOT NULL,
   numero_carte VARCHAR(20)  NOT NULL,
   prix DECIMAL(19,4) NOT NULL,
   id_utilisateur INT NOT NULL,
   PRIMARY KEY(id_commande),
   UNIQUE(reference_commande),
   FOREIGN KEY(id_utilisateur) REFERENCES utilisateur(id_utilisateur)
);

CREATE TABLE item_commande(
   id_item_commande INT AUTO_INCREMENT,
   item_type VARCHAR(50)  NOT NULL,
   item_id INT,
   quantite INT NOT NULL,
   id_commande INT NOT NULL,
   PRIMARY KEY(id_item_commande),
   FOREIGN KEY(id_commande) REFERENCES commande(id_commande)
);

CREATE TABLE specialite_item(
   id_specialite_item INT AUTO_INCREMENT,
   item_type VARCHAR(50)  NOT NULL,
   item_id INT NOT NULL,
   id_genre_specialite INT NOT NULL,
   PRIMARY KEY(id_specialite_item),
   FOREIGN KEY(id_genre_specialite) REFERENCES genre_specialite(id_genre_specialite)
);

CREATE TABLE item_wishlist(
   id_wishlist INT AUTO_INCREMENT,
   item_type VARCHAR(50)  NOT NULL,
   item_id INT NOT NULL,
   id_utilisateur INT NOT NULL,
   PRIMARY KEY(id_wishlist),
   FOREIGN KEY(id_utilisateur) REFERENCES utilisateur(id_utilisateur)
);

CREATE TABLE ticket(
   id_ticket INT AUTO_INCREMENT,
   libelle_ticket VARCHAR(50)  NOT NULL,
   description_ticket VARCHAR(1000)  NOT NULL,
   date_creation DATETIME NOT NULL,
   id_categorie_ticket INT NOT NULL,
   id_utilisateur INT NOT NULL,
   PRIMARY KEY(id_ticket),
   FOREIGN KEY(id_categorie_ticket) REFERENCES categorie_ticket(id_categorie_ticket),
   FOREIGN KEY(id_utilisateur) REFERENCES utilisateur(id_utilisateur)
);

CREATE TABLE configuration_produit(
   id_produit INT,
   id_configuration INT,
   PRIMARY KEY(id_produit, id_configuration),
   FOREIGN KEY(id_produit) REFERENCES produit(id_produit),
   FOREIGN KEY(id_configuration) REFERENCES configuration(id_configuration)
);

CREATE TABLE actualisation_statut_commande(
   id_commande INT,
   id_statut_commande INT,
   maj_date DATETIME NOT NULL,
   PRIMARY KEY(id_commande, id_statut_commande),
   FOREIGN KEY(id_commande) REFERENCES commande(id_commande),
   FOREIGN KEY(id_statut_commande) REFERENCES statut_commande(id_statut_commande)
);

CREATE TABLE tutoriel_categorie(
   id_categorie INT,
   id_tutoriel INT,
   PRIMARY KEY(id_categorie, id_tutoriel),
   FOREIGN KEY(id_categorie) REFERENCES categorie_produit(id_categorie),
   FOREIGN KEY(id_tutoriel) REFERENCES tutoriel(id_tutoriel)
);

CREATE TABLE actualisation_statut_ticket(
   id_ticket INT,
   id_statut_ticket INT,
   maj_date DATETIME NOT NULL,
   PRIMARY KEY(id_ticket, id_statut_ticket),
   FOREIGN KEY(id_ticket) REFERENCES ticket(id_ticket),
   FOREIGN KEY(id_statut_ticket) REFERENCES statut_ticket(id_statut_ticket)
);
