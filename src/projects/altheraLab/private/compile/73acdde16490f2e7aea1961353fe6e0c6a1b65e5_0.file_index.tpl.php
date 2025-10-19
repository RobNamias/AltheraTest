<?php
/* Smarty version 5.6.0, created on 2025-10-19 18:31:24
  from 'file:index.tpl' */

/* @var \Smarty\Template $_smarty_tpl */
if ($_smarty_tpl->getCompiled()->isFresh($_smarty_tpl, array (
  'version' => '5.6.0',
  'unifunc' => 'content_68f5125cdc16f0_97210900',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '73acdde16490f2e7aea1961353fe6e0c6a1b65e5' => 
    array (
      0 => 'index.tpl',
      1 => 1760800886,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:components/product_card.tpl' => 1,
  ),
))) {
function content_68f5125cdc16f0_97210900 (\Smarty\Template $_smarty_tpl) {
$_smarty_current_dir = '/src/projects/altheraLab/view';
?><!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <title>Accueil</title>
    <link rel="icon" href="data:,">
    <link rel="stylesheet" href="style/main.css">
    <link rel="stylesheet" href="../../../app/asset/bootstrap/css/bootstrap.min.css">
</head>

<body>
    <h1>Bonjour <?php echo $_smarty_tpl->getValue('name');?>
 !!</h1>
    <div class="container-card">
        <?php
$_from = $_smarty_tpl->getSmarty()->getRuntime('Foreach')->init($_smarty_tpl, $_smarty_tpl->getValue('products'), 'produit', false, 'i');
$foreach0DoElse = true;
foreach ($_from ?? [] as $_smarty_tpl->getVariable('i')->value => $_smarty_tpl->getVariable('produit')->value) {
$foreach0DoElse = false;
?>
            <?php $_smarty_tpl->renderSubTemplate("file:components/product_card.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array('number'=>$_smarty_tpl->getValue('i'),'id'=>$_smarty_tpl->getValue('produit')['id_produit'],'nom'=>$_smarty_tpl->getValue('produit')['nom'],'id_fiche_produit'=>$_smarty_tpl->getValue('produit')['id_fiche_produit'],'prix'=>$_smarty_tpl->getValue('produit')['prix']), (int) 0, $_smarty_current_dir);
?>
        <?php
}
if ($foreach0DoElse) {
?>
            Aucun produit
        <?php
}
$_smarty_tpl->getSmarty()->getRuntime('Foreach')->restore($_smarty_tpl, 1);?>
</div><?php }
}
