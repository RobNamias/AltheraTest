<?php
/* Smarty version 5.6.0, created on 2025-10-16 21:32:51
  from 'file:components/card_utilisateur.tpl' */

/* @var \Smarty\Template $_smarty_tpl */
if ($_smarty_tpl->getCompiled()->isFresh($_smarty_tpl, array (
  'version' => '5.6.0',
  'unifunc' => 'content_68f14863ea1922_35575312',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'e0ac4053848dc1183e4b5f13964888a8f2c904e6' => 
    array (
      0 => 'components/card_utilisateur.tpl',
      1 => 1760643166,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
))) {
function content_68f14863ea1922_35575312 (\Smarty\Template $_smarty_tpl) {
$_smarty_current_dir = '/src/projects/altheraLabAdmin/view/components';
echo '<?'; ?>
 php $test = false; <?php echo '?>'; ?>

<div class="utilisateur-card" utilisateur="<?php echo $_smarty_tpl->getValue('utilisateur');?>
">
    <div>
        <span><?php echo $_smarty_tpl->getValue('utilisateur')['id_utilisateur'];?>
</span>
        <span><?php echo $_smarty_tpl->getValue('utilisateur')['pseudo'];?>
</span>
    </div>
    <div>
        <span><?php echo $_smarty_tpl->getValue('utilisateur')['id_role'];?>
</span>
        <span><?php echo $_smarty_tpl->getValue('utilisateur')['date_inscription'];?>
</span>
    </div>
    <div>
        <span><?php echo $_smarty_tpl->getValue('utilisateur')['adresse_mail'];?>
</span>
    </div>
    <div>
        <span><?php echo $_smarty_tpl->getValue('utilisateur')['numero_telephone'];?>
</span>
    </div>
    <?php echo '<?php'; ?>
 if ($utilisateur->is_connected == 1) : <?php echo '?>'; ?>

    <div>
        <span>Connecté</span>
    </div>
    <?php echo '<?php'; ?>
 endif; <?php echo '?>'; ?>

    <button>Editer</button>
    <form method=" POST" action="/supprimer_utilisateur/<?php echo $_smarty_tpl->getValue('utilisateur')['id_utilisateur'];?>
" style="display:inline;">
        <button type="submit">Supprimer</button>
    </form>
    </div><?php }
}
