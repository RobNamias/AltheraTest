<?php
/* Smarty version 5.6.0, created on 2025-10-10 01:26:44
  from 'file:index.tpl' */

/* @var \Smarty\Template $_smarty_tpl */
if ($_smarty_tpl->getCompiled()->isFresh($_smarty_tpl, array (
  'version' => '5.6.0',
  'unifunc' => 'content_68e844b4523a15_69723640',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '87fd587c2178b73ae7648ecbcf432459ee407e82' => 
    array (
      0 => 'index.tpl',
      1 => 1760052400,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:components/card_utilisateur.tpl' => 1,
    'file:components/form_ajouter_utilisateur.tpl' => 1,
  ),
))) {
function content_68e844b4523a15_69723640 (\Smarty\Template $_smarty_tpl) {
$_smarty_current_dir = '/src/projects/altheraLab/view';
?><!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <title>Accueil</title>
    <link rel="icon" href="data:,">
    <link rel="stylesheet" href="style/main.css">
    <link rel="stylesheet" href="style/components/utilisateur_card.css">
</head>

<body>
    <h1>Bonjour <?php echo $_smarty_tpl->getValue('name');?>
 !!</h1>
    <div class="container-card">
        <?php
$_from = $_smarty_tpl->getSmarty()->getRuntime('Foreach')->init($_smarty_tpl, $_smarty_tpl->getValue('utilisateurs'), 'utilisateur', false, 'i');
$foreach0DoElse = true;
foreach ($_from ?? [] as $_smarty_tpl->getVariable('i')->value => $_smarty_tpl->getVariable('utilisateur')->value) {
$foreach0DoElse = false;
?>
            <?php $_smarty_tpl->renderSubTemplate("file:components/card_utilisateur.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('number'=>$_smarty_tpl->getValue('i'),'id'=>$_smarty_tpl->getValue('utilisateur')['id_utilisateur'],'pseudo'=>$_smarty_tpl->getValue('utilisateur')['pseudo'],'role'=>$_smarty_tpl->getValue('utilisateur')['id_role'],'date'=>$_smarty_tpl->getValue('utilisateur')['date_inscription'],'email'=>$_smarty_tpl->getValue('utilisateur')['adresse_mail'],'numeroTelephone'=>$_smarty_tpl->getValue('utilisateur')['numero_telephone']), (int) 0, $_smarty_current_dir);
?>
        <?php
}
if ($foreach0DoElse) {
?>
            Aucun utilisateur
        <?php
}
$_smarty_tpl->getSmarty()->getRuntime('Foreach')->restore($_smarty_tpl, 1);?>
    </div>
<div><?php $_smarty_tpl->renderSubTemplate("file:components/form_ajouter_utilisateur.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), (int) 0, $_smarty_current_dir);
?></div><?php }
}
