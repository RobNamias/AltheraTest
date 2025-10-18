<div class="utilisateur-card" data-id="{$utilisateur.id_utilisateur}">
    <div class="utilisateur-info">
        <div class="utilisateur-title">
            <span data-field="pseudo">{$utilisateur.pseudo}</span>
            {if $utilisateur.is_connected == 1}
                <p class="status"><b>Connecté</b></p>
            {/if}
        </div>
        <div class="utilisateur-details">
            <span data-field="adresse_mail">{$utilisateur.adresse_mail}</span>
            <span data-field="numero_telephone">{$utilisateur.numero_telephone}</span>
        </div>
    </div>
    <button class="edit-btn">Editer</button>
    <button class="save-btn">Sauvegarder</button>
    <button class="cancel-btn">Annuler</button>
    <form method="POST" action="/supprimer_utilisateur/{$utilisateur.id_utilisateur}" style="display:inline;">
        <button type="submit">Supprimer</button>
    </form>

</div>

<script type="module">
    import { initEditableCard } from '../js/components/editableCard.js';

    document.querySelectorAll('.utilisateur-card').forEach(card => {
        initEditableCard(card, {
            fields: ['pseudo', 'adresse_mail', 'numero_telephone'],
            updateUrl: '/api/utilisateur/update'
        });
    });
</script>