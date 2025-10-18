<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <title>Accueil Admin</title>
    <link rel="icon" href="data:,">
    <link rel="stylesheet" href="style/main.css">
    <link rel="stylesheet" href="style/components/utilisateur_card.css">
</head>

<body>
    <h1>Bonjour {$name} !!!!</h1>
    <div class="container-card">
        {foreach key=i item=utilisateur from=$utilisateurs}
            {include file="components/utilisateur_card.tpl" 
                                number=$i
                                utilisateur=$utilisateur
                                }
        {foreachelse}
            Aucun utilisateur
        {/foreach}
    </div>
    <div>{include file="components/form_ajouter_utilisateur.tpl"}</div>

<script type="module" src="public/js/main.js"></script>