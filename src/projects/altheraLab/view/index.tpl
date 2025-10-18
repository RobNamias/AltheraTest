<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <title>Accueil</title>
    <link rel="icon" href="data:,">
    <link rel="stylesheet" href="style/main.css">
    <link rel="stylesheet" href="../../../app/asset/bootstrap/css/bootstrap.min.css">
</head>

<body>
    <h1>Bonjour {$name} !!</h1>
    <div class="container-card">
        {foreach key=i item=produit from=$products}
            {include file="components/product_card.tpl" 
                                        number=$i 
                                        id=$produit.id_produit
                                        nom=$produit.nom
                                        id_fiche_produit=$produit.id_fiche_produit
                                        prix=$produit.prix}
        {foreachelse}
            Aucun produit
        {/foreach}
</div>