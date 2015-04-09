$(document).ready(function () {
    $('#dataTables').DataTable({
        "order": [[0, "desc"]],
        responsive: true,
        "language": {
            "emptyTable": "Aucune donnée disponible",
            "info": "Affiche _START_ à _END_ sur _TOTAL_ entrées",
            "infoEmpty": "Affiche 0 à 0 sur 0 entrée",
            "infoFiltered": "(filtré de _MAX_ entrées totales)",
            "infoPostFix": "",
            "thousands": ",",
            "lengthMenu": "Affiché _MENU_ entrées",
            "loadingRecords": "Chargement...",
            "processing": "traitement...",
            "search": "Recherche :",
            "zeroRecords": "Aucun enregistrement correspondant trouvé",
            "paginate": {
                "first": "Première",
                "last": "Dernière",
                "next": "Suivant",
                "previous": "Précédent"
            },
            "aria": {
                "sortAscending": ": activer pour trier la colonne ascendante",
                "sortDescending": ": activer pour trier la colonne descendante"
            }
        },
        "lengthMenu": [[10, 25, 50, -1], [10, 25, 50, "Tous"]],
    });
});