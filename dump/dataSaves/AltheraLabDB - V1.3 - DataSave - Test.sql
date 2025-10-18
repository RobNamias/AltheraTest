USE `AltheraLabDB`;

-- 1. Tables de référence
INSERT INTO role (libelle) VALUES
  ('Super-Administrateur'),
  ('Administrateur'),
  ('Utilisateur');

INSERT INTO statut_produit (libelle_statut_produit) VALUES
  ('Disponible'),
  ('Bientôt Disponible'),
  ('Indisponible'),
  ('Invisible');

INSERT INTO statut_commande (libelle) VALUES
  ('Enregistrée'),
  ('Validée'),
  ('En Attente'),
  ('Livrée'),
  ('Annulée');

INSERT INTO statut_ticket (libelle) VALUES
  ('Enregistré'),
  ('En cours de Traitement'),
  ('Clôturé');

INSERT INTO categorie_produit (code, nom) VALUES
  ('boitier', 'Boitier'),
  ('carte_mere', 'Carte Mère'),
  ('memoire', 'Mémoire'),
  ('processeur', 'Processeur'),
  ('carte_graphique', 'Carte Graphique'),
  ('stockage', 'Stockage'),
  ('refroidissement', 'Refroidissement'),
  ('accessoires', 'Accessoires');

INSERT INTO genre_specialite (libelle) VALUES
  ('Gaming'),
  ('POO'),
  ('Bureautique');

INSERT INTO categorie_ticket (libelle_categorie) VALUES
  ('Support technique'),
  ('Problème de livraison'),
  ('Demande de remboursement'),
  ('Question produit'),
  ('Suggestion'),
  ('Réclamation'),
  ('Bug site'),
  ('Demande de devis'),
  ('Assistance paiement'),
  ('Autre');

INSERT INTO faq (question, reponse) VALUES
  ('Comment créer un compte ?', 'Cliquez sur Inscription et remplissez le formulaire.'),
  ('Comment modifier mon mot de passe ?', 'Allez dans votre profil et cliquez sur Modifier le mot de passe.'),
  ('Quels moyens de paiement sont acceptés ?', 'Carte bancaire, PayPal, virement.'),
  ('Comment suivre ma commande ?', 'Consultez la rubrique Mes commandes dans votre espace client.'),
  ('Comment contacter le support ?', 'Utilisez le formulaire de contact ou ouvrez un ticket.'),
  ('Puis-je retourner un produit ?', 'Oui, sous 14 jours après réception.'),
  ('Comment utiliser un code promo ?', 'Saisissez-le lors du paiement.'),
  ('Où trouver les tutoriels ?', 'Dans la section Tutoriels du site.'),
  ('Comment ajouter un produit au panier ?', 'Cliquez sur Ajouter au panier sur la fiche produit.'),
  ('Comment supprimer mon compte ?', 'Contactez le support pour la suppression définitive.');

INSERT INTO tutoriel (libelle_tutoriel, link_tutoriel) VALUES
  ('Monter une carte mère', 'https://example.com/tuto-carte-mere'),
  ('Ajouter de la mémoire', 'https://example.com/tuto-memoire'),
  ('Changer un processeur', 'https://example.com/tuto-processeur'),
  ('Installer une carte graphique', 'https://example.com/tuto-carte-graphique'),
  ('Installer un SSD', 'https://example.com/tuto-ssd'),
  ('Installer un système de refroidissement', 'https://example.com/tuto-refroidissement'),
  ('Configurer le BIOS', 'https://example.com/tuto-bios'),
  ('Nettoyer son PC', 'https://example.com/tuto-nettoyage'),
  ('Optimiser les performances', 'https://example.com/tuto-optimisation');

-- 2. Tables dépendantes
-- Utilisateurs
INSERT INTO utilisateur (pseudo, adresse_mail, mot_de_passe, numero_telephone, adresse_livraison, date_inscription, est_suspendu, is_connected, id_role)
VALUES
('jdupont', 'j.dupont@example.com', 'azerty123', '0601020301', '12 rue des Lilas, Paris', '2025-01-10', 0, 1, 1),
('mlefebvre', 'm.lefebvre@example.com', 'password1', '0601020302', '8 avenue Victor Hugo, Lyon', '2025-02-15', 0, 0, 2),
('cbernard', 'c.bernard@example.com', 'passw0rd', '0601020303', '5 rue du Moulin, Marseille', '2025-03-20', 0, 1, 1),
('srodriguez', 's.rodriguez@example.com', 'monmotdepasse', '0601020304', '22 rue de la Paix, Toulouse', '2025-04-05', 0, 0, 3),
('lmartin', 'l.martin@example.com', 'martinpass', '0601020305', '3 impasse des Roses, Bordeaux', '2025-05-12', 0, 1, 1),
('pduval', 'p.duval@example.com', 'duvalpass', '0601020306', '17 rue des Fleurs, Nantes', '2025-06-18', 0, 0, 2),
('aferreira', 'a.ferreira@example.com', 'ferreirapass', '0601020307', '9 rue du Stade, Lille', '2025-07-22', 0, 1, 1),
('bpetit', 'b.petit@example.com', 'petitpass', '0601020308', '14 rue des Écoles, Rennes', '2025-08-30', 0, 0, 1),
('cgarcia', 'c.garcia@example.com', 'garciapass', '0601020310', '11 rue du Château, Montpellier', '2025-10-01', 0, 0, 1),
('user41', 'user41@example.com', 'pass41', '0601020341', '41 rue fictive, Paris', '2025-01-11', 0, 1, 1),
('user42', 'user42@example.com', 'pass42', '0601020342', '42 rue fictive, Lyon', '2025-02-12', 0, 0, 2),
('user43', 'user43@example.com', 'pass43', '0601020343', '43 rue fictive, Marseille', '2025-03-13', 0, 1, 1),
('user44', 'user44@example.com', 'pass44', '0601020344', '44 rue fictive, Toulouse', '2025-04-14', 0, 0, 3),
('user45', 'user45@example.com', 'pass45', '0601020345', '45 rue fictive, Bordeaux', '2025-05-15', 0, 1, 1),
('user46', 'user46@example.com', 'pass46', '0601020346', '46 rue fictive, Nantes', '2025-06-16', 0, 0, 2),
('user47', 'user47@example.com', 'pass47', '0601020347', '47 rue fictive, Lille', '2025-07-17', 0, 1, 1),
('user48', 'user48@example.com', 'pass48', '0601020348', '48 rue fictive, Rennes', '2025-08-18', 0, 0, 1),
('user49', 'user49@example.com', 'pass49', '0601020349', '49 rue fictive, Strasbourg', '2025-09-19', 0, 1, 2),
('user50', 'user50@example.com', 'pass50', '0601020350', '50 rue fictive, Montpellier', '2025-10-20', 0, 0, 1),
('eparis', 'e.paris@example.com', 'parispass', '0601020311', '21 rue du Soleil, Nice', '2025-01-11', 0, 1, 1),
('fblanc', 'f.blanc@example.com', 'blancpass', '0601020312', '32 rue des Violettes, Dijon', '2025-02-12', 0, 0, 2),
('groux', 'g.roux@example.com', 'rouxpass', '0601020313', '43 rue du Lac, Annecy', '2025-03-13', 0, 1, 1),
('hfontaine', 'h.fontaine@example.com', 'fontainepass', '0601020314', '54 rue du Rhône, Genève', '2025-04-14', 0, 0, 3),
('imarchand', 'i.marchand@example.com', 'marchandpass', '0601020315', '65 rue du Port, Brest', '2025-05-15', 0, 1, 1),
('jlambert', 'j.lambert@example.com', 'lambertpass', '0601020316', '76 rue des Pins, Limoges', '2025-06-16', 0, 0, 2),
('kpaul', 'k.paul@example.com', 'paulpass', '0601020317', '87 rue du Stade, Metz', '2025-07-17', 0, 1, 1),
('lbarbier', 'l.barbier@example.com', 'barbierpass', '0601020318', '98 rue des Prés, Amiens', '2025-08-18', 0, 0, 1),
('mguillaume', 'm.guillaume@example.com', 'guillaumepass', '0601020319', '109 rue du Parc, Reims', '2025-09-19', 0, 1, 2),
('nperrin', 'n.perrin@example.com', 'perrinpass', '0601020320', '120 rue du Château, Tours', '2025-10-20', 0, 0, 1),
('obrun', 'o.brun@example.com', 'brunpass', '0601020321', '131 rue du Moulin, Clermont', '2025-01-21', 0, 1, 1),
('qpicard', 'q.picard@example.com', 'picardpass', '0601020322', '153 rue du Soleil, Perpignan', '2025-03-23', 0, 1, 1),
('rlemaire', 'r.lemaire@example.com', 'lemairepass', '0601020323', '164 rue des Violettes, Angers', '2025-04-24', 0, 0, 3),
('srobert', 's.robert@example.com', 'robertpass', '0601020324', '175 rue du Lac, La Rochelle', '2025-05-25', 0, 1, 1),
('tduhamel', 't.duhamel@example.com', 'duhamelpass', '0601020325', '186 rue du Rhône, Grenoble', '2025-06-26', 0, 0, 2),
('uvasseur', 'u.vasseur@example.com', 'vasseurpass', '0601020326', '197 rue du Port, Saint-Malo', '2025-07-27', 0, 1, 1),
('wcolin', 'w.colin@example.com', 'colinpass', '0601020327', '208 rue des Pins, Mulhouse', '2025-08-28', 0, 0, 1),
('xgiraud', 'x.giraud@example.com', 'giraudpass', '0601020328', '219 rue du Parc, Besançon', '2025-09-29', 0, 1, 2),
('yrenard', 'y.renard@example.com', 'renardpass', '0601020329', '230 rue du Château, Orléans', '2025-10-30', 0, 0, 1),
('zfaure', 'z.faure@example.com', 'faurepass', '0601020330', '241 rue du Moulin, Avignon', '2025-01-31', 0, 1, 1),
('aaubert', 'a.aubert@example.com', 'aubertpass', '0601020352', '252 rue des Lilas, Rouen', '2025-02-01', 0, 0, 2),
('bboucher', 'b.boucher@example.com', 'boucherpass', '0601020353', '263 rue du Soleil, Toulon', '2025-03-02', 0, 1, 1),
('cclement', 'c.clement@example.com', 'clementpass', '0601020354', '274 rue des Violettes, Nancy', '2025-04-03', 0, 0, 3),
('ddelorme', 'd.delorme@example.com', 'delormepass', '0601020355', '285 rue du Lac, Poitiers', '2025-05-04', 0, 1, 1),
('eeglantine', 'e.eglantine@example.com', 'eglantinepass', '0601020356', '296 rue du Rhône, Caen', '2025-06-05', 0, 0, 2),
('ffabre', 'f.fabre@example.com', 'fabrepass', '0601020357', '307 rue du Port, Colmar', '2025-07-06', 0, 1, 1),
('ggirard', 'g.girard@example.com', 'girardpass', '0601020358', '318 rue des Pins, Chambéry', '2025-08-07', 0, 0, 1),
('hhumbert', 'h.humbert@example.com', 'humbertpass', '0601020359', '329 rue du Parc, Ajaccio', '2025-09-08', 0, 1, 2),
('ijacquet', 'i.jacquet@example.com', 'jacquetpass', '0601020360', '340 rue du Château, Saint-Étienne', '2025-10-09', 0, 0, 1),
('jkarim', 'j.karim@example.com', 'karimpass', '0601020361', '351 rue du Moulin, Montauban', '2025-01-10', 0, 1, 1),
('llemay', 'l.lemay@example.com', 'lemaypass', '0601020362', '362 rue des Lilas, Tarbes', '2025-02-11', 0, 0, 2),
('mmorel', 'm.morel@example.com', 'morelpass', '0601020363', '373 rue du Soleil, Albi', '2025-03-12', 0, 1, 1),
('nnavarro', 'n.navarro@example.com', 'navarropass', '0601020364', '384 rue des Violettes, Brive', '2025-04-13', 0, 0, 3),
('qquentin', 'q.quentin@example.com', 'quentinpass', '0601020365', '406 rue du Rhône, Arles', '2025-06-15', 0, 0, 2),
('rroux', 'r.roux@example.com', 'rouxpass', '0601020366', '417 rue du Port, Dax', '2025-07-16', 0, 1, 1),
('ssimon', 's.simon@example.com', 'simonpass', '0601020367', '428 rue des Pins, Chalon', '2025-08-17', 0, 0, 1),
('ttessier', 't.tessier@example.com', 'tessierpass', '0601020368', '439 rue du Parc, Mâcon', '2025-09-18', 0, 1, 2),
('uvincent', 'u.vincent@example.com', 'vincentpass', '0601020369', '450 rue du Château, Beauvais', '2025-10-19', 0, 0, 1);

INSERT INTO fiche_produit (code_reference, marque, libelle_ref, indice_performance, socket, ram_type, consommation_watt, gpu_taille, wattage, type_refroidissement, max_cooler_height, radiateur_taille, stockage_type, stockage_capacite, caracteristiques_json, id_categorie)
VALUES
('REF-BOITIER-01', 'AltheraTech', 'Boitier MasterBox', 70, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{"format":"ATX","dimensions":"440x210x480mm","poids":"6.5kg","baies":"2x3.5\" 2x2.5\""}', 1),
('REF-CM-01', 'AltheraTech', 'Carte Mère Prime', 80, 'LGA1200', 'DDR4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{"chipset":"B560","format":"ATX","slots_ram":4,"ports_sata":6}', 2),
('REF-MEM-01', 'AltheraTech', 'Mémoire Vengeance 16Go', 60, NULL, 'DDR4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{"fréquence":"3200MHz","latence":"CL16","modules":2,"profil":"XMP"}', 3),
('REF-CPU-01', 'AltheraTech', 'Core i7-11700K', 95, 'LGA1200', NULL, 125, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{"coeurs":8,"threads":16,"gravure":"14nm","frequence_base":"3.6GHz","frequence_boost":"5.0GHz"}', 4),
('REF-GPU-01', 'NVIDIA', 'RTX 3060', 90, NULL, NULL, 170, 12, NULL, NULL, NULL, NULL, NULL, NULL, '{"type":"GDDR6","longueur":"242mm","sorties":"3xDP 1xHDMI","ventilateurs":2}', 5),
('REF-STO-01', 'Samsung', 'SSD 970 EVO 1To', 85, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SSD', 1000, '{"format":"M.2","interface":"NVMe PCIe 3.0","vitesse_lecture":"3500Mo/s","vitesse_ecriture":"3300Mo/s"}', 6),
('REF-REF-01', 'Noctua', 'Ventirad NH-U12S', 75, NULL, NULL, NULL, NULL, NULL, 'Air', 158, NULL, NULL, NULL, '{"bruit":"22dB","dimensions":"158x125x71mm","ventilateur":"120mm","compatibilite":"Intel/AMD"}', 7),
('REF-ACC-01', 'Logitech', 'Souris MX Master', 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{"type":"Sans fil","dpi_max":"4000","boutons":7,"autonomie":"70h"}', 8),
('REF-BOITIER-02', 'AltheraTech', 'Boitier H510', 72, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{"format":"ATX","dimensions":"435x210x428mm","poids":"6.8kg","baies":"2x3.5\" 2x2.5\""}', 1),
('REF-CM-02', 'AltheraTech', 'Carte Mère B550', 82, 'AM4', 'DDR4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{"chipset":"B550","format":"ATX","slots_ram":4,"ports_sata":6}', 2),
('REF-MEM-02', 'AltheraTech', 'Mémoire Ripjaws 32Go', 65, NULL, 'DDR4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{"fréquence":"3600MHz","latence":"CL18","modules":2,"profil":"XMP"}', 3),
('REF-CPU-02', 'AltheraTech', 'Ryzen 5 5600X', 92, 'AM4', NULL, 65, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{"coeurs":6,"threads":12,"gravure":"7nm","frequence_base":"3.7GHz","frequence_boost":"4.6GHz"}', 4),
('REF-GPU-02', 'AMD', 'Radeon RX 6700 XT', 88, NULL, NULL, 230, 12, NULL, NULL, NULL, NULL, NULL, NULL, '{"type":"GDDR6","longueur":"267mm","sorties":"3xDP 1xHDMI","ventilateurs":2}', 5),
('REF-STO-02', 'Crucial', 'SSD MX500 500Go', 80, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SSD', 500, '{"format":"2.5","interface":"SATA","vitesse_lecture":"560Mo/s","vitesse_ecriture":"510Mo/s"}', 6),
('REF-REF-02', 'BeQuiet', 'Pure Rock 2', 73, NULL, NULL, NULL, NULL, NULL, 'Air', 155, NULL, NULL, NULL, '{"bruit":"24dB","dimensions":"155x121x87mm","ventilateur":"120mm","compatibilite":"Intel/AMD"}', 7),
('REF-ACC-02', 'SteelSeries', 'Clavier Apex Pro', 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{"type":"Mécanique","switchs":"OmniPoint","rétroéclairage":"RGB","repose-poignets":"magnétique"}', 8),
('REF-BOITIER-03', 'AltheraTech', 'Boitier Eclipse P400A', 74, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{"format":"ATX","dimensions":"470x210x465mm","poids":"7.1kg","baies":"2x3.5\" 2x2.5\""}', 1),
('REF-CM-03', 'AltheraTech', 'Carte Mère Z590', 83, 'LGA1200', 'DDR4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{"chipset":"Z590","format":"ATX","slots_ram":4,"ports_sata":6}', 2),
('REF-MEM-03', 'AltheraTech', 'Mémoire Fury 16Go', 62, NULL, 'DDR4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{"fréquence":"3200MHz","latence":"CL16","modules":2,"profil":"XMP"}', 3),
('REF-CPU-03', 'AltheraTech', 'Core i5-11600K', 90, 'LGA1200', NULL, 125, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{"coeurs":6,"threads":12,"gravure":"14nm","frequence_base":"3.9GHz","frequence_boost":"4.9GHz"}', 4),
('REF-GPU-03', 'NVIDIA', 'RTX 3070', 93, NULL, NULL, 220, 8, NULL, NULL, NULL, NULL, NULL, NULL, '{"type":"GDDR6","longueur":"242mm","sorties":"3xDP 1xHDMI","ventilateurs":2}', 5),
('REF-STO-03', 'Western Digital', 'HDD Blue 2To', 78, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HDD', 2000, '{"format":"3.5","interface":"SATA","cache":"256Mo","vitesse":"5400rpm"}', 6),
('REF-REF-03', 'CoolerMaster', 'MasterLiquid ML240L', 76, NULL, NULL, NULL, NULL, NULL, 'Water', NULL, 240, NULL, NULL, '{"bruit":"20dB","radiateur":"240mm","pompe":"silencieuse","compatibilite":"Intel/AMD"}', 7),
('REF-ACC-03', 'Razer', 'Casque Kraken', 53, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{"type":"Gaming","haut-parleurs":"50mm","micro":"retractable","poids":"322g"}', 8);

-- Produits informatiques réalistes
INSERT INTO produit (nom, stock, prix, couleur, nb_clic, image_path, id_statut_produit, id_fiche_produit)
VALUES
('Boitier MasterBox Noir', 20, 89, 'Noir', 15, 'img/boitier_masterbox_noir.jpg', 1, 1),
('Boitier MasterBox Blanc', 10, 89, 'Blanc', 8, 'img/boitier_masterbox_blanc.jpg', 2, 1),
('Carte Mère Prime Noir', 25, 149, 'Noir', 20, 'img/cm_prime_noir.jpg', 1, 2),
('Carte Mère Prime Blanc', 12, 149, 'Blanc', 7, 'img/cm_prime_blanc.jpg', 2, 2),
('Mémoire Vengeance 16Go Rouge', 30, 69, 'Rouge', 18, 'img/memoire_vengeance_rouge.jpg', 1, 3),
('Mémoire Vengeance 16Go Bleu', 15, 69, 'Bleu', 6, 'img/memoire_vengeance_bleu.jpg', 3, 3),
('Core i7-11700K Gris', 18, 329, 'Gris', 12, 'img/core_i7_gris.jpg', 1, 4),
('Core i7-11700K Noir', 8, 329, 'Noir', 5, 'img/core_i7_noir.jpg', 2, 4),
('RTX 3060 Noir', 22, 399, 'Noir', 25, 'img/rtx3060_noir.jpg', 1, 5),
('RTX 3060 Blanc', 9, 399, 'Blanc', 4, 'img/rtx3060_blanc.jpg', 2, 5),
('SSD 970 EVO 1To Noir', 40, 119, 'Noir', 30, 'img/ssd970evo_noir.jpg', 1, 6),
('SSD 970 EVO 1To Or', 5, 119, 'Or', 2, 'img/ssd970evo_or.jpg', 3, 6),
('Ventirad NH-U12S Gris', 16, 69, 'Gris', 10, 'img/ventirad_nhgris.jpg', 1, 7),
('Ventirad NH-U12S Noir', 7, 69, 'Noir', 3, 'img/ventirad_nhnoir.jpg', 2, 7),
('Souris MX Master Bleu', 35, 99, 'Bleu', 22, 'img/souris_mx_bleu.jpg', 1, 8),
('Souris MX Master Rose', 6, 99, 'Rose', 1, 'img/souris_mx_rose.jpg', 3, 8),
('Boitier H510 Noir', 21, 99, 'Noir', 14, 'img/boitier_h510_noir.jpg', 1, 9),
('Boitier H510 Rouge', 4, 99, 'Rouge', 2, 'img/boitier_h510_rouge.jpg', 3, 9),
('Carte Mère B550 Gris', 19, 159, 'Gris', 11, 'img/cm_b550_gris.jpg', 1, 10),
('Carte Mère B550 Bleu', 7, 159, 'Bleu', 3, 'img/cm_b550_bleu.jpg', 2, 10),
('Mémoire Ripjaws 32Go Vert', 28, 99, 'Vert', 17, 'img/memoire_ripjaws_vert.jpg', 1, 11),
('Mémoire Ripjaws 32Go Violet', 3, 99, 'Violet', 1, 'img/memoire_ripjaws_violet.jpg', 3, 11),
('Ryzen 5 5600X Noir', 14, 249, 'Noir', 9, 'img/ryzen5600x_noir.jpg', 1, 12),
('Ryzen 5 5600X Argent', 2, 249, 'Argent', 1, 'img/ryzen5600x_argent.jpg', 3, 12),
('Radeon RX 6700 XT Bleu', 20, 479, 'Bleu', 13, 'img/rx6700xt_bleu.jpg', 1, 13),
('Radeon RX 6700 XT Rouge', 5, 479, 'Rouge', 2, 'img/rx6700xt_rouge.jpg', 2, 13),
('SSD MX500 500Go Gris', 32, 69, 'Gris', 21, 'img/ssd_mx500_gris.jpg', 1, 14),
('SSD MX500 500Go Or', 3, 69, 'Or', 1, 'img/ssd_mx500_or.jpg', 3, 14),
('Pure Rock 2 Noir', 13, 49, 'Noir', 8, 'img/purerock2_noir.jpg', 1, 15),
('Pure Rock 2 Blanc', 2, 49, 'Blanc', 1, 'img/purerock2_blanc.jpg', 2, 15),
('Clavier Apex Pro Gris', 27, 189, 'Gris', 19, 'img/apexpro_gris.jpg', 1, 16),
('Clavier Apex Pro Bleu', 4, 189, 'Bleu', 2, 'img/apexpro_bleu.jpg', 3, 16),
('Boitier Eclipse P400A Noir', 18, 109, 'Noir', 12, 'img/eclipsep400a_noir.jpg', 1, 17),
('Boitier Eclipse P400A Rose', 2, 109, 'Rose', 1, 'img/eclipsep400a_rose.jpg', 3, 17),
('Carte Mère Z590 Argent', 15, 179, 'Argent', 10, 'img/cm_z590_argent.jpg', 1, 18),
('Carte Mère Z590 Noir', 3, 179, 'Noir', 1, 'img/cm_z590_noir.jpg', 2, 18),
('Mémoire Fury 16Go Bleu', 24, 79, 'Bleu', 16, 'img/memoire_fury_bleu.jpg', 1, 19),
('Mémoire Fury 16Go Rouge', 2, 79, 'Rouge', 1, 'img/memoire_fury_rouge.jpg', 3, 19),
('Core i5-11600K Gris', 11, 229, 'Gris', 7, 'img/corei5_gris.jpg', 1, 20),
('Core i5-11600K Noir', 2, 229, 'Noir', 1, 'img/corei5_noir.jpg', 2, 20),
('RTX 3070 Noir', 23, 599, 'Noir', 18, 'img/rtx3070_noir.jpg', 1, 21),
('RTX 3070 Bleu', 3, 599, 'Bleu', 1, 'img/rtx3070_bleu.jpg', 2, 21),
('HDD Blue 2To Gris', 36, 59, 'Gris', 25, 'img/hddblue_gris.jpg', 1, 22),
('HDD Blue 2To Noir', 2, 59, 'Noir', 1, 'img/hddblue_noir.jpg', 3, 22),
('MasterLiquid ML240L Noir', 17, 89, 'Noir', 11, 'img/ml240l_noir.jpg', 1, 23),
('MasterLiquid ML240L Bleu', 2, 89, 'Bleu', 1, 'img/ml240l_bleu.jpg', 2, 23),
('Casque Kraken Vert', 29, 129, 'Vert', 20, 'img/kraken_vert.jpg', 1, 24),
('Casque Kraken Violet', 2, 129, 'Violet', 1, 'img/kraken_violet.jpg', 3, 24);

-- Items de panier (produits uniquement)
INSERT INTO item_panier (item_type, item_id, quantite, id_utilisateur)
VALUES
('produit', 1, 2, 1),
('produit', 5, 1, 1),
('produit', 10, 1, 2),
('produit', 12, 3, 2),
('produit', 3, 1, 3),
('produit', 7, 2, 3),
('produit', 15, 1, 4),
('produit', 20, 1, 4),
('produit', 2, 1, 5),
('produit', 8, 2, 5),
('produit', 18, 1, 6),
('produit', 22, 1, 6),
('produit', 4, 1, 7),
('produit', 9, 1, 7),
('produit', 6, 1, 8),
('produit', 13, 1, 8),
('produit', 11, 1, 9),
('produit', 16, 1, 9),
('produit', 14, 1, 10),
('produit', 19, 1, 10);

-- Items de wishlist (produits uniquement)
INSERT INTO item_wishlist (item_type, item_id, id_utilisateur)
VALUES
('produit', 2, 1),
('produit', 6, 1),
('produit', 11, 2),
('produit', 15, 2),
('produit', 3, 3),
('produit', 8, 3),
('produit', 12, 4),
('produit', 17, 4),
('produit', 5, 5),
('produit', 10, 5),
('produit', 14, 6),
('produit', 19, 6),
('produit', 7, 7),
('produit', 13, 7),
('produit', 9, 8),
('produit', 18, 8),
('produit', 4, 9),
('produit', 16, 9),
('produit', 1, 10),
('produit', 20, 10);

-- Jeu de données pour la table commande (10 commandes réalistes)
INSERT INTO commande (adresse_livraison, reference_commande, numero_carte, prix, id_utilisateur)
VALUES
('12 rue des Lilas, Paris', 'CMD-2025-0001', '4532 1234 5678 9012', 178.00, 1),
('8 avenue Victor Hugo, Lyon', 'CMD-2025-0002', '5100 2345 6789 0123', 149.00, 2),
('5 rue du Moulin, Marseille', 'CMD-2025-0003', '6011 3456 7890 1234', 69.00, 3),
('22 rue de la Paix, Toulouse', 'CMD-2025-0004', '3782 456789 01234', 329.00, 4),
('3 impasse des Roses, Bordeaux', 'CMD-2025-0005', '4539 5678 9012 3456', 99.00, 5),
('17 rue des Fleurs, Nantes', 'CMD-2025-0006', '5105 6789 0123 4567', 249.00, 6),
('9 rue du Stade, Lille', 'CMD-2025-0007', '6011 7890 1234 5678', 99.00, 7),
('14 rue des Écoles, Rennes', 'CMD-2025-0008', '3782 901234 56789', 69.00, 8),
('11 rue du Château, Montpellier', 'CMD-2025-0009', '4532 2345 6789 0123', 119.00, 9),
('41 rue fictive, Paris', 'CMD-2025-0010', '5100 3456 7890 1234', 189.00, 10);

-- Items de commande (produits uniquement, exemple pour 10 commandes)
INSERT INTO item_commande (item_type, item_id, quantite, id_commande)
VALUES
('produit', 1, 1, 1),
('produit', 5, 2, 1),
('produit', 10, 1, 2),
('produit', 12, 1, 2),
('produit', 3, 1, 3),
('produit', 7, 1, 3),
('produit', 15, 1, 4),
('produit', 20, 1, 4),
('produit', 2, 1, 5),
('produit', 8, 1, 5),
('produit', 18, 1, 6),
('produit', 22, 1, 6),
('produit', 4, 1, 7),
('produit', 9, 1, 7),
('produit', 6, 1, 8),
('produit', 13, 1, 8),
('produit', 11, 1, 9),
('produit', 16, 1, 9),
('produit', 14, 1, 10),
('produit', 19, 1, 10);

-- Configurations prédéfinies (créées par des admins)
INSERT INTO configuration (libelle_configuration, is_predefinie, date_creation, id_utilisateur)
VALUES
('Gamer Ultime', 1, '2025-01-10', 2),
('Bureautique Essentielle', 1, '2025-02-15', 4),
('Création Graphique', 1, '2025-03-20', 2),
('Mini PC Compact', 1, '2025-04-05', 4);

-- Configurations personnalisées (créées par des utilisateurs)
INSERT INTO configuration (libelle_configuration, is_predefinie, date_creation, id_utilisateur)
VALUES
('Config Jean', 0, '2025-05-12', 1),
('Config Marie', 0, '2025-06-18', 3),
('Config Paul', 0, '2025-07-22', 5),
('Config Alice', 0, '2025-08-30', 6),
('Config Luc', 0, '2025-09-14', 7),
('Config Emma', 0, '2025-10-01', 8),
('Config Hugo', 0, '2025-01-11', 9),
('Config Clara', 0, '2025-02-12', 10),
('Config Max', 0, '2025-03-13', 11),
('Config Léa', 0, '2025-04-14', 12),
('Config Tom', 0, '2025-05-15', 13),
('Config Zoé', 0, '2025-06-16', 14),
('Config Louis', 0, '2025-07-17', 15),
('Config Julie', 0, '2025-08-18', 16),
('Config Nathan', 0, '2025-09-19', 17),
('Config Chloé', 0, '2025-10-20', 18),
('Config Lucas', 0, '2025-01-21', 19),
('Config Manon', 0, '2025-02-22', 20),
('Config Sarah', 0, '2025-03-23', 21),
('Config Quentin', 0, '2025-04-24', 22),
('Config Victor', 0, '2025-05-25', 23),
('Config Lola', 0, '2025-06-26', 24),
('Config Valentin', 0, '2025-07-27', 25),
('Config Camille', 0, '2025-08-28', 26);

-- Associations configuration <-> produit
INSERT INTO configuration_produit (id_produit, id_configuration)
VALUES
(1, 1), (2, 1), (3, 1), (4, 1), (5, 1),
(6, 2), (7, 2), (8, 2), (9, 2), (10, 2),
(11, 3), (12, 3), (13, 3), (14, 3), (15, 3),
(16, 4), (17, 4), (18, 4), (19, 4), (20, 4),
(21, 5), (22, 5), (23, 5),
(24, 6), (25, 6), (26, 6),
(27, 7), (28, 7), (29, 7),
(30, 8), (31, 8), (32, 8),
(33, 9), (34, 9), (35, 9),
(36, 10), (37, 10), (38, 10),
(39, 11), (40, 11), (41, 11),
(42, 12), (43, 12), (44, 12),
(45, 13), (46, 13), (47, 13),
(47, 14), (12, 14), (32, 14),
(1, 15), (5, 15), (10, 15),
(2, 16), (6, 16), (11, 16),
(3, 17), (7, 17), (12, 17),
(4, 18), (8, 18), (13, 18),
(9, 19), (14, 19), (19, 19),
(15, 20), (20, 20), (25, 20),
(16, 21), (21, 21), (26, 21),
(17, 22), (22, 22), (27, 22),
(18, 23), (23, 23), (28, 23),
(19, 24), (24, 24), (29, 24),
(20, 25), (25, 25), (30, 25);

-- Associations spécialité_item (produits et configurations prédéfinies)
INSERT INTO specialite_item (item_type, item_id, id_genre_specialite)
VALUES
-- Configurations prédéfinies
('configuration', 1, 1), -- Gamer Ultime -> Gaming
('configuration', 2, 3), -- Bureautique Essentielle -> Bureautique
('configuration', 3, 2), -- Création Graphique -> POO
('configuration', 4, 1), -- Mini PC Compact -> Gaming
-- Processeurs
('produit', 7, 1), -- Core i7-11700K Gris -> Gaming
('produit', 8, 2), -- Core i7-11700K Noir -> POO
('produit', 23, 1), -- Ryzen 5 5600X Noir -> Gaming
('produit', 24, 2), -- Ryzen 5 5600X Argent -> POO
('produit', 41, 3), -- Core i5-11600K Gris -> Bureautique
('produit', 42, 1), -- Core i5-11600K Noir -> Gaming
-- Cartes graphiques
('produit', 9, 1), -- RTX 3060 Noir -> Gaming
('produit', 10, 3), -- RTX 3060 Blanc -> Bureautique
('produit', 25, 1), -- Radeon RX 6700 XT Bleu -> Gaming
('produit', 26, 2), -- Radeon RX 6700 XT Rouge -> POO
('produit', 43, 1), -- RTX 3070 Noir -> Gaming
('produit', 44, 2), -- RTX 3070 Bleu -> POO
-- Cartes mères
('produit', 3, 2), -- Carte Mère Prime Noir -> POO
('produit', 4, 3), -- Carte Mère Prime Blanc -> Bureautique
('produit', 19, 2), -- Carte Mère B550 Gris -> POO
('produit', 20, 3), -- Carte Mère B550 Bleu -> Bureautique
('produit', 35, 2), -- Carte Mère Z590 Argent -> POO
('produit', 36, 1), -- Carte Mère Z590 Noir -> Gaming
-- RAM
('produit', 5, 1), -- Mémoire Vengeance 16Go Rouge -> Gaming
('produit', 6, 3), -- Mémoire Vengeance 16Go Bleu -> Bureautique
('produit', 21, 1), -- Mémoire Ripjaws 32Go Vert -> Gaming
('produit', 22, 3), -- Mémoire Ripjaws 32Go Violet -> Bureautique
('produit', 37, 1), -- Mémoire Fury 16Go Bleu -> Gaming
('produit', 38, 3); -- Mémoire Fury 16Go Rouge -> Bureautique

-- Tickets de support (30 exemples)
INSERT INTO ticket (libelle_ticket, description_ticket, date_creation, id_categorie_ticket, id_utilisateur)
VALUES
('Problème de livraison', 'Je n’ai pas reçu mon colis.', '2025-01-10 10:00:00', 2, 1),
('Demande de remboursement', 'Produit défectueux, je souhaite un remboursement.', '2025-01-12 14:30:00', 3, 1),
('Question produit', 'Ce processeur est-il compatible avec ma carte mère ?', '2025-02-05 09:15:00', 4, 2),
('Support technique', 'Impossible d’installer Windows.', '2025-02-10 16:45:00', 1, 2),
('Suggestion', 'Ajouter plus de choix de RAM.', '2025-03-01 11:20:00', 5, 3),
('Réclamation', 'Produit reçu abîmé.', '2025-03-05 13:00:00', 6, 3),
('Bug site', 'Erreur 500 lors du paiement.', '2025-03-15 17:40:00', 7, 4),
('Demande de devis', 'Je souhaite un devis pour une config gaming.', '2025-03-20 08:30:00', 8, 4),
('Assistance paiement', 'Problème avec ma carte bancaire.', '2025-04-02 15:10:00', 9, 5),
('Autre', 'Question sur la garantie.', '2025-04-10 12:00:00', 10, 5),
('Problème de livraison', 'Colis bloqué en transit.', '2025-04-15 10:00:00', 2, 6),
('Demande de remboursement', 'Erreur de commande.', '2025-04-18 14:30:00', 3, 6),
('Question produit', 'Quelle RAM pour mon PC ?', '2025-05-05 09:15:00', 4, 7),
('Support technique', 'Impossible d’activer Windows.', '2025-05-10 16:45:00', 1, 7),
('Suggestion', 'Ajouter des accessoires.', '2025-06-01 11:20:00', 5, 8),
('Réclamation', 'Produit manquant dans le colis.', '2025-06-05 13:00:00', 6, 8),
('Bug site', 'Impossible de valider le panier.', '2025-06-15 17:40:00', 7, 9),
('Demande de devis', 'Devis pour une config bureautique.', '2025-06-20 08:30:00', 8, 9),
('Assistance paiement', 'Paiement refusé.', '2025-07-02 15:10:00', 9, 10),
('Autre', 'Question sur le SAV.', '2025-07-10 12:00:00', 10, 10),
('Problème de livraison', 'Retard de livraison.', '2025-07-15 10:00:00', 2, 11),
('Demande de remboursement', 'Produit non conforme.', '2025-07-18 14:30:00', 3, 11),
('Question produit', 'Compatibilité carte graphique.', '2025-08-05 09:15:00', 4, 12),
('Support technique', 'Erreur lors du montage.', '2025-08-10 16:45:00', 1, 12),
('Suggestion', 'Plus de choix de boîtiers.', '2025-09-01 11:20:00', 5, 13),
('Réclamation', 'Accessoire manquant.', '2025-09-05 13:00:00', 6, 13),
('Bug site', 'Impossible de créer un compte.', '2025-09-15 17:40:00', 7, 14),
('Demande de devis', 'Devis pour une config POO.', '2025-09-20 08:30:00', 8, 14),
('Assistance paiement', 'Erreur de paiement.', '2025-10-02 15:10:00', 9, 15),
('Autre', 'Question sur la livraison.', '2025-10-10 12:00:00', 10, 15);

-- Actualisation des statuts des tickets (cohérente)
INSERT INTO actualisation_statut_ticket (id_ticket, id_statut_ticket, maj_date)
VALUES
(1, 1, '2025-01-10 10:00:00'), -- Enregistré
(1, 2, '2025-01-11 09:00:00'), -- En cours de Traitement
(1, 3, '2025-01-12 17:00:00'), -- Clôturé
(2, 1, '2025-01-12 14:30:00'),
(2, 2, '2025-01-13 10:00:00'),
(2, 3, '2025-01-15 15:00:00'),
(3, 2, '2025-02-06 11:00:00'),
(4, 1, '2025-02-10 16:45:00'),
(4, 2, '2025-02-11 14:00:00'),
(5, 1, '2025-03-01 11:20:00'),
(5, 2, '2025-03-02 09:00:00'),
(6, 1, '2025-03-05 13:00:00'),
(6, 2, '2025-03-06 10:00:00'),
(7, 2, '2025-03-16 12:00:00'),
(8, 1, '2025-03-20 08:30:00'),
(8, 2, '2025-03-21 10:00:00'),
(9, 1, '2025-04-02 15:10:00'),
(9, 2, '2025-04-03 09:00:00'),
(10, 1, '2025-04-10 12:00:00'),
(10, 2, '2025-04-11 11:00:00'),
(11, 1, '2025-04-15 10:00:00'),
(11, 2, '2025-04-16 09:00:00'),
(12, 1, '2025-04-18 14:30:00'),
(12, 2, '2025-04-19 10:00:00'),
(13, 1, '2025-05-05 09:15:00'),
(13, 2, '2025-05-06 11:00:00'),
(14, 1, '2025-05-10 16:45:00'),
(14, 2, '2025-05-11 14:00:00'),
(15, 1, '2025-06-01 11:20:00'),
(15, 2, '2025-06-02 09:00:00'),
(16, 1, '2025-06-05 13:00:00'),
(16, 2, '2025-06-06 10:00:00'),
(17, 1, '2025-06-15 17:40:00'),
(17, 2, '2025-06-16 12:00:00'),
(18, 1, '2025-06-20 08:30:00'),
(18, 2, '2025-06-21 10:00:00'),
(19, 1, '2025-07-02 15:10:00'),
(19, 2, '2025-07-03 09:00:00'),
(20, 1, '2025-07-10 12:00:00'),
(20, 2, '2025-07-11 11:00:00'),
(21, 1, '2025-07-15 10:00:00'),
(21, 2, '2025-07-16 09:00:00'),
(22, 1, '2025-07-18 14:30:00'),
(22, 2, '2025-07-19 10:00:00'),
(23, 1, '2025-08-05 09:15:00'),
(23, 2, '2025-08-06 11:00:00'),
(24, 1, '2025-08-10 16:45:00'),
(24, 2, '2025-08-11 14:00:00'),
(25, 1, '2025-09-01 11:20:00'),
(25, 2, '2025-09-02 09:00:00'),
(26, 1, '2025-09-05 13:00:00'),
(26, 2, '2025-09-06 10:00:00'),
(27, 1, '2025-09-15 17:40:00'),
(27, 2, '2025-09-16 12:00:00'),
(28, 1, '2025-09-20 08:30:00'),
(28, 2, '2025-09-21 10:00:00'),
(29, 1, '2025-10-02 15:10:00'),
(29, 2, '2025-10-03 09:00:00'),
(30, 1, '2025-10-10 12:00:00'),
(30, 2, '2025-10-11 11:00:00');

-- Cartes de paiement (exemples variés)
INSERT INTO carte_paiement (numero_carte, nom_carte, date_expiration_carte, ccv, is_default, id_utilisateur) VALUES
('4532 1234 5678 9012', 'Jean Dupont', '12/27', '123', 1, 1),
('5100 2345 6789 0123', 'Marie Lefebvre', '08/26', '456', 1, 2),
('6011 3456 7890 1234', 'Carlos Bernard', '03/28', '789', 0, 3),
('3782 456789 01234', 'Sophie Rodriguez', '11/25', '321', 1, 4),
('4539 5678 9012 3456', 'Luc Martin', '07/27', '654', 0, 5),
('5105 6789 0123 4567', 'Paul Duval', '09/26', '987', 1, 6),
('6011 7890 1234 5678', 'Ana Ferreira', '01/29', '159', 0, 7),
('3782 901234 56789', 'Bruno Petit', '05/28', '753', 1, 8),
('4532 2345 6789 0123', 'Julie Moreau', '10/27', '852', 0, 9),
('5100 3456 7890 1234', 'Camille Garcia', '04/26', '951', 1, 10);