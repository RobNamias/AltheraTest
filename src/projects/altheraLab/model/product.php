<?php
namespace projects\altheraLab\model;

use app\model\Db;

class Product extends Db
{
    function getProducts()
    {
        $sql = 'Select * from produit';
        $rq = self::$db->prepare($sql);
        $rq->execute();
        return $rq->fetchAll();
    }

}