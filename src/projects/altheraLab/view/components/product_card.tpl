<div class="product-card">
    <div>
        <span>{$id}</span>
        <span>{$nom}</span>
    </div>
    <div>
        {* <span>{$reference}</span> *}
        <span>{$id_fiche_produit}</span>
    </div>
    <div>
        <span>{$prix} €</span>
    </div>
    {* En cliquant sur le bouton editer -strcutre if avec boolean-, les span deviennet éditables -form action =
    user/edit_utilisateur- et le bouton Editon
    devient un type submit *}
</div>