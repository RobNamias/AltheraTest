// editableCard.js
// Composant JS réutilisable pour rendre n'importe quelle card éditable (CRUD admin)
// Nécessite ajaxPost (importé depuis utils/ajaxUtils.js)

import { ajaxPost } from '../utils/ajaxUtils.js';

/**
 * Initialise une carte éditable
 * @param {HTMLElement} cardElem - L'élément racine de la card
 * @param {Object} config - Configuration (champs éditables, url, callbacks)
 *   config = {
 *     fields: ['pseudo', 'adresse_mail', ...],
 *     updateUrl: '/api/utilisateur/update',
 *     onSave: (data, response) => {},
 *     onCancel: (data) => {}
 *   }
 */
export function initEditableCard(cardElem, config) {
    const { fields, updateUrl, onSave, onCancel } = config;
    let editMode = false;
    let originalValues = {};

    // Boutons
    const editBtn = cardElem.querySelector('.edit-btn');
    const saveBtn = cardElem.querySelector('.save-btn');
    const cancelBtn = cardElem.querySelector('.cancel-btn');

    // Champs
    const fieldElems = {};
    fields.forEach(f => {
        fieldElems[f] = cardElem.querySelector(`[data-field="${f}"]`);
    });

    // Passe en mode édition
    function enableEdit() {
        editMode = true;
        fields.forEach(f => {
            originalValues[f] = fieldElems[f].textContent;
            const input = document.createElement('input');
            input.value = fieldElems[f].textContent;
            input.setAttribute('data-field', f);
            fieldElems[f].replaceWith(input);
            fieldElems[f] = input;
        });
        editBtn.style.display = 'none';
        saveBtn.style.display = '';
        cancelBtn.style.display = '';
    }

    // Annule l'édition
    function cancelEdit() {
        editMode = false;
        fields.forEach(f => {
            const span = document.createElement('span');
            span.setAttribute('data-field', f);
            span.textContent = originalValues[f];
            fieldElems[f].replaceWith(span);
            fieldElems[f] = span;
        });
        editBtn.style.display = '';
        saveBtn.style.display = 'none';
        cancelBtn.style.display = 'none';
        if (onCancel) onCancel(originalValues);
    }

    // Sauvegarde via AJAX
    async function saveEdit() {
        const data = {};
        fields.forEach(f => {
            data[f] = fieldElems[f].value;
        });
        // Ajoute un id si présent sur la card
        if (cardElem.dataset.id) data.id = cardElem.dataset.id;
        try {
            const response = await ajaxPost(updateUrl, data);
            fields.forEach(f => {
                const span = document.createElement('span');
                span.setAttribute('data-field', f);
                span.textContent = data[f];
                fieldElems[f].replaceWith(span);
                fieldElems[f] = span;
            });
            editBtn.style.display = '';
            saveBtn.style.display = 'none';
            cancelBtn.style.display = 'none';
            if (onSave) onSave(data, response);
        } catch (e) {
            alert('Erreur lors de la sauvegarde : ' + e.message);
        }
    }

    // Listeners
    editBtn.addEventListener('click', enableEdit);
    cancelBtn.addEventListener('click', cancelEdit);
    saveBtn.addEventListener('click', saveEdit);

    // Init état
    saveBtn.style.display = 'none';
    cancelBtn.style.display = 'none';
}

// Exemple d'utilisation dans le HTML :
// <div class="utilisateur-card" data-id="1">
//   <span data-field="pseudo">Alice</span>
//   <span data-field="adresse_mail">alice@mail.com</span>
//   <button class="edit-btn">Editer</button>
//   <button class="save-btn">Sauvegarder</button>
//   <button class="cancel-btn">Annuler</button>
// </div>
//
// import { initEditableCard } from './components/editableCard.js';
// initEditableCard(document.querySelector('.utilisateur-card'), {
//   fields: ['pseudo', 'adresse_mail'],
//   updateUrl: '/api/utilisateur/update'
// });
