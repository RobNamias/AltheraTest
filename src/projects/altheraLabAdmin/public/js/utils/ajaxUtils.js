// Utilitaires AJAX courants pour toute l'application

/**
 * Effectue une requête GET AJAX
 * @param {string} url
 * @returns {Promise<any>}
 */
export async function ajaxGet(url) {
    const response = await fetch(url, { credentials: 'same-origin' });
    if (!response.ok) throw new Error('Erreur réseau : ' + response.status);
    return response.json();
}

/**
 * Effectue une requête POST AJAX (JSON)
 * @param {string} url
 * @param {Object} data
 * @returns {Promise<any>}
 */
export async function ajaxPost(url, data) {
    const response = await fetch(url, {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        credentials: 'same-origin',
        body: JSON.stringify(data)
    });
    if (!response.ok) throw new Error('Erreur réseau : ' + response.status);
    return response.json();
}

/**
 * Sérialise un formulaire en objet JS
 * @param {HTMLFormElement} form
 * @returns {Object}
 */
export function serializeForm(form) {
    const obj = {};
    new FormData(form).forEach((value, key) => {
        obj[key] = value;
    });
    return obj;
}

/**
 * Affiche ou masque un loader (spinner) par id
 * @param {string} id
 * @param {boolean} show
 */
export function toggleLoader(id, show) {
    const el = document.getElementById(id);
    if (el) el.style.display = show ? '' : 'none';
}
