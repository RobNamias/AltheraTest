<?php
namespace projects\altheraLabAdmin\model;

use app\model\Db;

class Utilisateur extends Db
{
    function getUtilisateurs()
    {
        $sql = 'Select * from utilisateur';
        $rq = self::$db->prepare($sql);
        $rq->execute();
        return $rq->fetchAll();
    }
    public function ajoutUtilisateur($email, $pseudo, $password, $telephone, $role = 1) {
        $sql = 'INSERT INTO utilisateur (adresse_mail, pseudo, mot_de_passe, numero_telephone, date_inscription, id_role, est_suspendu, is_connected) VALUES (?, ?, ?, ?, NOW(), ?, 0, 0)';
        $stmt = self::$db->prepare($sql);
        $stmt->execute([$email, $pseudo, $password, $telephone, $role]);
    }

    public function supprimerUtilisateur($id) {
        $sql = 'DELETE FROM utilisateur WHERE id_utilisateur = ?';
        $stmt = self::$db->prepare($sql);
        $stmt->execute([$id]);
    }
}