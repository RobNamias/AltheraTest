# Librairie Ajax et JS

## Arborescence du dossier `src/projects/altheraLabAdmin/public/js`

```text
public/js/
│
├── utils/
│   ├── ajaxUtils.js      // Fonctions utilitaires AJAX (GET, POST, sérialisation de formulaire, loader)
│   └── main.js           // Point d'entrée JS global, peut importer les utilitaires et initialiser l'app
│
└── components/
    └── editableCard.js   // Nouveau composant réutilisable pour toutes les cards éditables (voir ci-dessous)
```

---

## utils/ajaxUtils.js

- `ajaxGet(url)` : Effectue une requête GET AJAX, retourne la réponse JSON.
- `ajaxPost(url, data)` : Effectue une requête POST AJAX (en JSON), retourne la réponse JSON.
- `serializeForm(form)` : Sérialise un formulaire HTML en objet JS.
- `toggleLoader(id, show)` : Affiche ou masque un loader/spinner par id.

**Utilisation :**

```js
import { ajaxGet, ajaxPost, serializeForm, toggleLoader } from '../utils/ajaxUtils.js';
```

---

## utils/main.js

- Point d'entrée global JS (optionnel). Peut importer les utilitaires, initialiser des listeners globaux, etc.

**Utilisation :**

```js
import { ajaxGet } from './utils/ajaxUtils.js';
// Code d'initialisation global ici
```

---

## components/editableCard.js

- Composant JS réutilisable pour rendre n'importe quelle card éditable (CRUD admin)
- Nécessite ajaxPost (importé depuis utils/ajaxUtils.js)
- Fonctions principales :
  - `initEditableCard(cardElem, config)` : Initialise la card en mode édition, annulation, sauvegarde AJAX.
    - `fields` : liste des champs éditables (ex : ['pseudo', 'adresse_mail', ...])
    - `updateUrl` : URL d'API pour la sauvegarde
    - `onSave`, `onCancel` : callbacks optionnels

**Exemple d'utilisation dans un template :**

```html
<div class="utilisateur-card" data-id="1">
  <span data-field="pseudo">Alice</span>
  <span data-field="adresse_mail">alice@mail.com</span>
  <span data-field="numero_telephone">0600000000</span>
  <button class="edit-btn">Editer</button>
  <button class="save-btn">Sauvegarder</button>
  <button class="cancel-btn">Annuler</button>
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
```

---

## Bonnes pratiques

- Centralise les fonctions réutilisables dans `utils/`.
- Place le JS spécifique à un composant ou une vue dans `components/`.
- Importe toujours les modules JS avec `type="module"` si tu utilises `import`/`export`.
- Utilise le composant `editableCard` pour factoriser l’édition de toutes tes entités (utilisateur, produit, commande, etc.).
- Documente chaque fonction utilitaire ou composant pour faciliter la maintenance.
