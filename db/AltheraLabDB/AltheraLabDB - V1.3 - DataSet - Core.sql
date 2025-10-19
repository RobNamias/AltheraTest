USE `AltheraLabDB`;

-- 1. Tables de référence
INSERT INTO role (libelle) VALUES
  ('Super-Administrateur');
  ('Administrateur'),
  ('Utilisateur'),

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
