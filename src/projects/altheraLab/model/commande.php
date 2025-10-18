<?php 
namespace projects\altheraLab\model;

use app\model\Db;

class Commande extends Db
{
    function getCommandes()
    {
        $sql = 'Select * from commande';
        $rq = self::$db->prepare($sql);
        $rq->execute();
        return $rq->fetchAll();
    }
}