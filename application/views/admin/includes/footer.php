<style type="text/css">
    .footer {
        left: 0;
    }
</style>
<footer class="footer text-center"> Developed By Colourmoon Technologies </footer>

<!-- Bootstrap Core JavaScript -->
<script src="<?= ADMIN_ASSETS_PATH ?>assets/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- Menu Plugin JavaScript -->
<script src="<?= ADMIN_ASSETS_PATH ?>assets/plugins/bower_components/sidebar-nav/dist/sidebar-nav.min.js"></script>

<!--slimscroll JavaScript -->
<script src="<?= ADMIN_ASSETS_PATH ?>assets/js/jquery.slimscroll.js"></script>
<!--Wave Effects -->
<script src="<?= ADMIN_ASSETS_PATH ?>assets/js/waves.js"></script>
<!-- Custom Theme JavaScript -->
<script src="<?= ADMIN_ASSETS_PATH ?>assets/js/custom.min.js"></script>

<script src="<?= ADMIN_ASSETS_PATH ?>assets/plugins/bower_components/styleswitcher/jQuery.style.switcher.js"></script>

<link href="//cdn.datatables.net/1.10.15/css/jquery.dataTables.min.css" rel="stylesheet">

<script src="//cdn.datatables.net/1.10.15/js/jquery.dataTables.min.js"></script>

<script src="//cdn.jsdelivr.net/jquery.validation/1.16.0/jquery.validate.min.js"></script>
<script src="<?= ADMIN_ASSETS_PATH ?>assets/js/jquery.duplicate.js"></script>  
<!-- start - This is for export functionality only -->
<script src="//cdn.datatables.net/buttons/1.2.2/js/dataTables.buttons.min.js"></script>
<script src="//cdn.datatables.net/buttons/1.2.2/js/buttons.flash.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jszip/2.5.0/jszip.min.js"></script>
<script src="//cdn.rawgit.com/bpampuch/pdfmake/0.1.18/build/pdfmake.min.js"></script>
<script src="//cdn.rawgit.com/bpampuch/pdfmake/0.1.18/build/vfs_fonts.js"></script>
<script src="//cdn.datatables.net/buttons/1.2.2/js/buttons.html5.min.js"></script>
<script src="//cdn.datatables.net/buttons/1.2.2/js/buttons.print.min.js"></script>
<script src="<?= ADMIN_ASSETS_PATH ?>assets/plugins/bower_components/bootstrap-datepicker/bootstrap-datepicker.min.js"></script>
<!-- Date range Plugin JavaScript -->
<script src="<?= ADMIN_ASSETS_PATH ?>assets/plugins/bower_components/timepicker/bootstrap-timepicker.min.js"></script>
<script src="<?= ADMIN_ASSETS_PATH ?>assets/plugins/bower_components/bootstrap-daterangepicker/daterangepicker.js"></script>

<!-- end - This is for export functionality only -->
<script>
    $(document).ready(function () {
        $('#data___tabel').DataTable({
            "pageLength": 100
        });
    });
</script>
<script>

    $('#data___tabel2').DataTable({
        "pageLength": 100,
        dom: 'Bfrtip'
        , buttons: [
            'copy', 'print',
            {
                extend: 'excelHtml5',
                title: 'OrderReport'
            },
            {
                extend: 'pdfHtml5',
                title: 'OrderReport'
            },
            {
                extend: 'csvHtml5',
                title: 'OrderReport'
            }
        ],

    });
    $('#data___tabel_users').DataTable({
        "pageLength": 100,
        dom: 'Bfrtip'
        , buttons: [
            'copy', 'print',
            {
                extend: 'excelHtml5',
                title: 'Usersdata'
            },
            {
                extend: 'pdfHtml5',
                title: 'Usersdata'
            },
            {
                extend: 'csvHtml5',
                title: 'Userdata'
            }
        ],

    });
    jQuery('.mydatepicker, #datepicker').datepicker();
</script>
</html>
