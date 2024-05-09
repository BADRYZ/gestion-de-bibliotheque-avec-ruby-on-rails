// emprunt_form.js

document.addEventListener('DOMContentLoaded', function() {
    var itemTypeSelect = document.getElementById('item_type_select');
    var documentFields = document.getElementById('document_fields');
    var materielFields = document.getElementById('materiel_fields');
  
    function toggleFields() {
      if (itemTypeSelect.value === 'Document') {
        documentFields.style.display = 'block';
        materielFields.style.display = 'none';
      } else if (itemTypeSelect.value === 'Materiel') {
        documentFields.style.display = 'none';
        materielFields.style.display = 'block';
      }
    }
  
    toggleFields(); // Appel initial pour mettre à jour les champs selon la valeur initiale du select
  
    itemTypeSelect.addEventListener('change', function() {
      toggleFields(); // Appel à la fonction pour mettre à jour les champs lorsque la sélection change
    });
  });
  