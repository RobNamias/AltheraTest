<form method="POST" action="/ajoutUtilisateur" id="form-ajout-utilisateur">
    <input type="email" id="email" name="email" value="email@exemple.com" required> <br>
    <input type="text" id="pseudo" name="pseudo" value="Pseudo" required> <br>
    <input type="password" id="password" name="password" value="mdp" required> <br>

    <input type="text" id="telephone" name="telephone" value="Téléphone" required> <br>
    <select id="role" name="role" required>
        <option value="1">Administrateur</option>
        <option value="2" selected>Utilisateur</option>
    </select>
    {* <input type="hidden" name="token" value="{$token}"> *}

    <button type="submit">Ajouter l'utilisateur</button>
</form>