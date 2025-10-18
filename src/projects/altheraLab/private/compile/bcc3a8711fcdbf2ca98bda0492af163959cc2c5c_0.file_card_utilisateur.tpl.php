<?php
/* Smarty version 5.6.0, created on 2025-10-10 01:38:41
  from 'file:components/card_utilisateur.tpl' */

/* @var \Smarty\Template $_smarty_tpl */
if ($_smarty_tpl->getCompiled()->isFresh($_smarty_tpl, array (
  'version' => '5.6.0',
  'unifunc' => 'content_68e84781b30af9_57141036',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'bcc3a8711fcdbf2ca98bda0492af163959cc2c5c' => 
    array (
      0 => 'components/card_utilisateur.tpl',
      1 => 1760053105,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
))) {
function content_68e84781b30af9_57141036 (\Smarty\Template $_smarty_tpl) {
$_smarty_current_dir = '/src/projects/altheraLab/view/components';
?><div class="utilisateur-card">
    <div>
        <span><?php echo $_smarty_tpl->getValue('id');?>
</span>
        <span><?php echo $_smarty_tpl->getValue('pseudo');?>
</span>
    </div>
    <div>
        <span><?php echo $_smarty_tpl->getValue('role');?>
</span>
        <span><?php echo $_smarty_tpl->getValue('date');?>
</span>
    </div>
    <div>
        <span><?php echo $_smarty_tpl->getValue('email');?>
</span>
    </div>
    <div>
        <span><?php echo $_smarty_tpl->getValue('numeroTelephone');?>
</span>
    </div>
    <button>Editer</button>
    <form method="POST" action="/supprimer_utilisateur/<?php echo $_smarty_tpl->getValue('id');?>
" style="display:inline;">
        <button type="submit">Supprimer</button>
    </form>
    </div><?php }
}
