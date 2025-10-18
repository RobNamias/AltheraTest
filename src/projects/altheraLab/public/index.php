<?php
$project = explode('/', __DIR__);
define('PROJECT', $project[count($project)-2]);
// var_dump($project);

require_once(__DIR__.'/../../../config/config.php');
use app\controller\Main;
Main::Router($routes);