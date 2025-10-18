<?php
namespace projects\altheraLabAdmin\controller;
use projects\altheraLabAdmin\model\Utilisateur;

class utilisateurController {
    public function ajoutUtilisateur() {
        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            $pseudo = $_POST['pseudo'] ?? null;
            $email = $_POST['email'] ?? null;
            $password = $_POST['password'] ?? null;
            $telephone = $_POST['telephone'] ?? null;

            if ($pseudo && $email && $password && $telephone) {
                $utilisateurModel = new Utilisateur();
                $utilisateurModel->ajoutUtilisateur($email, $pseudo, $password, $telephone);
                header('Location: /');
                exit();
            } else {
                echo "Tous les champs sont requis.";
            }
        } else {
            echo "Invalid request method.";
        }
    }

    public function supprimerUtilisateur($id) {
        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            $utilisateurModel = new Utilisateur();
            $utilisateurModel->supprimerUtilisateur($id);
            header('Location: /');
            exit();
        } else {
            echo "Invalid request method.";
        }
    }   
}