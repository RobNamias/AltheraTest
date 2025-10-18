<?php
/* Smarty version 5.6.0, created on 2025-10-17 01:39:26
  from 'file:components/utilisateur_card.tpl' */

/* @var \Smarty\Template $_smarty_tpl */
if ($_smarty_tpl->getCompiled()->isFresh($_smarty_tpl, array (
  'version' => '5.6.0',
  'unifunc' => 'content_68f1822e4c3b43_86562983',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '237c47b8f0d8437cfa382e0c1f88a806f8e4f511' => 
    array (
      0 => 'components/utilisateur_card.tpl',
      1 => 1760657889,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
))) {
function content_68f1822e4c3b43_86562983 (\Smarty\Template $_smarty_tpl) {
$_smarty_current_dir = '/src/projects/altheraLabAdmin/view/components';
?><div class="utilisateur-card" data-id="<?php echo $_smarty_tpl->getValue('utilisateur')['id_utilisateur'];?>
">
    <div class="utilisateur-info">
        <div class="utilisateur-title">
            <span data-field="pseudo"><?php echo $_smarty_tpl->getValue('utilisateur')['pseudo'];?>
</span>
            <?php if ($_smarty_tpl->getValue('utilisateur')['is_connected'] == 1) {?>
                <p class="status"><b>Connecté</b></p>
            <?php }?>
        </div>
        <div class="utilisateur-details">
            <span data-field="adresse_mail"><?php echo $_smarty_tpl->getValue('utilisateur')['adresse_mail'];?>
</span>
            <span data-field="numero_telephone"><?php echo $_smarty_tpl->getValue('utilisateur')['numero_telephone'];?>
</span>
        </div>
    </div>
    <button class="edit-btn">Editer</button>
    <button class="save-btn">Sauvegarder</button>
    <button class="cancel-btn">Annuler</button>
    <form method="POST" action="/supprimer_utilisateur/<?php echo $_smarty_tpl->getValue('utilisateur')['id_utilisateur'];?>
" style="display:inline;">
        <button type="submit">Supprimer</button>
    </form>

</div>

<?php echo '<script'; ?>
 type="module">
    import { initEditableCard } from '../js/components/editableCard.js';

    document.querySelectorAll('.utilisateur-card').forEach(card => {
        initEditableCard(card, {
            fields: ['pseudo', 'adresse_mail', 'numero_telephone'],
            updateUrl: '/api/utilisateur/update'
        });
    });
<?php echo '</script'; ?>
><?php }
}
