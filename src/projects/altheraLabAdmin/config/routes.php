<?php

$routes = [
    '/'=> [
        'method' => ['GET', 'POST'],
        'controller'=> ['projects\altheraLabAdmin\controller\Home', 'index']
    ],
    '/user/{id:\d+}[/{username}]' => [
        'method' => ['GET'],
        'controller'=> ['projects\altheraLabAdmin\controller\utilisateurController', 'getUserById']
    ],
    '/ajoutUtilisateur' => [
        'method' => ['POST'],
        'controller'=> ['projects\altheraLabAdmin\controller\utilisateurController', 'ajoutUtilisateur']
    ],
    'supprimer_utilisateur/{id:\d+}' => [
        'method' => ['POST'],
        'controller'=> ['projects\altheraLabAdmin\controller\utilisateurController', 'supprimerUtilisateur']
    ],
];