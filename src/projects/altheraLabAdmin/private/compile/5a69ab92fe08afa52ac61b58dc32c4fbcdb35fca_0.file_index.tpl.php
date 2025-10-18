<?php
/* Smarty version 5.6.0, created on 2025-10-17 00:17:06
  from 'file:index.tpl' */

/* @var \Smarty\Template $_smarty_tpl */
if ($_smarty_tpl->getCompiled()->isFresh($_smarty_tpl, array (
  'version' => '5.6.0',
  'unifunc' => 'content_68f16ee25a3577_62991539',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '5a69ab92fe08afa52ac61b58dc32c4fbcdb35fca' => 
    array (
      0 => 'index.tpl',
      1 => 1760653021,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:components/utilisateur_card.tpl' => 1,
    'file:components/form_ajouter_utilisateur.tpl' => 1,
  ),
))) {
function content_68f16ee25a3577_62991539 (\Smarty\Template $_smarty_tpl) {
$_smarty_current_dir = '/src/projects/altheraLabAdmin/view';
?><!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <title>Accueil Admin</title>
    <link rel="icon" href="data:,">
    <link rel="stylesheet" href="style/main.css">
    <link rel="stylesheet" href="style/components/utilisateur_card.css">
</head>

<body>
    <h1>Bonjour <?php echo $_smarty_tpl->getValue('name');?>
 !!!!</h1>
    <div class="container-card">
        <?php
$_from = $_smarty_tpl->getSmarty()->getRuntime('Foreach')->init($_smarty_tpl, $_smarty_tpl->getValue('utilisateurs'), 'utilisateur', false, 'i');
$foreach0DoElse = true;
foreach ($_from ?? [] as $_smarty_tpl->getVariable('i')->value => $_smarty_tpl->getVariable('utilisateur')->value) {
$foreach0DoElse = false;
?>
            <?php $_smarty_tpl->renderSubTemplate("file:components/utilisateur_card.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('number'=>$_smarty_tpl->getValue('i'),'utilisateur'=>$_smarty_tpl->getValue('utilisateur')), (int) 0, $_smarty_current_dir);
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
?></div>

<?php echo '<script'; ?>
 type="module" src="public/js/main.js"><?php echo '</script'; ?>
><?php }
}
