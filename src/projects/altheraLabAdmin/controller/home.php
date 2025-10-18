<?php
namespace projects\altheraLabAdmin\controller;

use app\controller\View;
use projects\altheraLabAdmin\model\Utilisateur;

class Home {
    public function index() {
        // Connexion à la base de données
        // Traitement des données
        // Afficher une vue
        View::Init();
        $name = "Cédric";
        $utilisateurModel = new Utilisateur();
        $utilisateurs = $utilisateurModel->getUtilisateurs();
        View::$smarty->assign('name', $name ?? 'Invité');
        View::$smarty->assign('utilisateurs', $utilisateurs);
        View::$smarty->display('index.tpl');
    }
}