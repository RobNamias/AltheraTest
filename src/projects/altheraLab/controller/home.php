<?php
namespace projects\altheraLab\controller;

use app\controller\View;
use projects\altheraLab\model\product;

class Home {
    public function index() {
        // Connexion à la base de données
        // Traitement des données
        // Afficher une vue
        View::Init();
        $name = "Cédric";
        $productModel = new product();
        $products = $productModel->getProducts();
        View::$smarty->assign('name', $name ?? 'Invité');
        View::$smarty->assign('products', $products);
        View::$smarty->display('index.tpl');
    }
}