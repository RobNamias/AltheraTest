<?php
/* Smarty version 5.6.0, created on 2025-10-18 13:46:32
  from 'file:components/product_card.tpl' */

/* @var \Smarty\Template $_smarty_tpl */
if ($_smarty_tpl->getCompiled()->isFresh($_smarty_tpl, array (
  'version' => '5.6.0',
  'unifunc' => 'content_68f37e18984330_20259091',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'ddfc7587c9d8e2a953bf1cff31a63190ecf367d0' => 
    array (
      0 => 'components/product_card.tpl',
      1 => 1760633127,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
))) {
function content_68f37e18984330_20259091 (\Smarty\Template $_smarty_tpl) {
$_smarty_current_dir = '/src/projects/altheraLab/view/components';
?><div class="product-card">
    <div>
        <span><?php echo $_smarty_tpl->getValue('id');?>
</span>
        <span><?php echo $_smarty_tpl->getValue('nom');?>
</span>
    </div>
    <div>
                <span><?php echo $_smarty_tpl->getValue('id_fiche_produit');?>
</span>
    </div>
    <div>
        <span><?php echo $_smarty_tpl->getValue('prix');?>
 €</span>
    </div>
    </div><?php }
}
