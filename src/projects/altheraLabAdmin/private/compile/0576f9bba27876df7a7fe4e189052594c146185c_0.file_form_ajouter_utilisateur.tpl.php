<?php
/* Smarty version 5.6.0, created on 2025-10-10 01:34:22
  from 'file:components/form_ajouter_utilisateur.tpl' */

/* @var \Smarty\Template $_smarty_tpl */
if ($_smarty_tpl->getCompiled()->isFresh($_smarty_tpl, array (
  'version' => '5.6.0',
  'unifunc' => 'content_68e8467eb13859_86972429',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '0576f9bba27876df7a7fe4e189052594c146185c' => 
    array (
      0 => 'components/form_ajouter_utilisateur.tpl',
      1 => 1760052859,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
))) {
function content_68e8467eb13859_86972429 (\Smarty\Template $_smarty_tpl) {
$_smarty_current_dir = '/src/projects/altheraLab/view/components';
?><form method="POST" action="/ajoutUtilisateur" id="form-ajout-utilisateur">
    <input type="email" id="email" name="email" value="email@exemple.com" required> <br>
    <input type="text" id="pseudo" name="pseudo" value="Pseudo" required> <br>
    <input type="password" id="password" name="password" value="mdp" required> <br>

    <input type="text" id="telephone" name="telephone" value="Téléphone" required> <br>
    <select id="role" name="role" required>
        <option value="1">Administrateur</option>
        <option value="2" selected>Utilisateur</option>
    </select>
    
    <button type="submit">Ajouter l'utilisateur</button>
</form><?php }
}
