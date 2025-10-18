<?php

$routes = [
    '/'=> [
        'method' => ['GET', 'POST'],
        'controller'=> ['projects\altheraLab\controller\Home', 'index']
    ],
    '/user/{id:\d+}[/{username}]' => [
        'method' => ['GET'],
        'controller'=> ['projects\altheraLab\controller\utilisateurController', 'getUserById']
    ],
];