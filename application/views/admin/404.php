<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" type="image/png" sizes="16x16" href="<?=base_url()?>assets/images/<?=$site_details->fav?>">
    <title><?=$site_details->title?></title>
    <!-- Bootstrap Core CSS -->
    <link href="<?=ADMIN_ASSETS_PATH?>assets/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="<?=ADMIN_ASSETS_PATH?>assets/plugins/bower_components/datatables/jquery.dataTables.min.css" rel="stylesheet" type="text/css" />
    <link href="https://cdn.datatables.net/buttons/1.2.2/css/buttons.dataTables.min.css" rel="stylesheet" type="text/css" />
    <!-- Menu CSS -->
    <link href="<?=ADMIN_ASSETS_PATH?>assets/plugins/bower_components/sidebar-nav/dist/sidebar-nav.min.css" rel="stylesheet">
    <!-- animation CSS -->
    <link href="<?=ADMIN_ASSETS_PATH?>assets/css/animate.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="<?=ADMIN_ASSETS_PATH?>assets/css/style.css" rel="stylesheet">
    <!-- color CSS -->
    <link href="<?=ADMIN_ASSETS_PATH?>assets/css/colors/blue.css" id="theme" rel="stylesheet">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-19175540-9', 'auto');
  ga('send', 'pageview');

</script>
</head>
<body>
<!-- Preloader -->
<div class="preloader">
  <div class="cssload-speeding-wheel"></div>
</div>
<section id="wrapper" class="error-page">
  <div class="error-box">
    <div class="error-body text-center">
      <h1>404</h1>
      <h3 class="text-uppercase">Page Not Found !</h3>
      <p class="text-muted m-t-30 m-b-30">YOU SEEM TO BE TRYING TO FIND THE WAY HOME</p>
      <a href="<?=base_url()?>home" class="btn btn-info btn-rounded waves-effect waves-light m-b-40">Back to home</a> </div>
  </div>
</section>
</body>
<style type="text/css">
        .footer {
 left: 0;
}
</style>
 <footer class="footer text-center"> Developed By Colourmoon Technologies </footer>
<!-- jQuery -->
<script src="<?=ADMIN_ASSETS_PATH?>assets/plugins/bower_components/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap Core JavaScript -->
<script src="<?=ADMIN_ASSETS_PATH?>assets/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- Menu Plugin JavaScript -->
<script src="<?=ADMIN_ASSETS_PATH?>assets/plugins/bower_components/sidebar-nav/dist/sidebar-nav.min.js"></script>

<!--slimscroll JavaScript -->
<script src="<?=ADMIN_ASSETS_PATH?>assets/js/jquery.slimscroll.js"></script>
<!--Wave Effects -->
<script src="<?=ADMIN_ASSETS_PATH?>assets/js/waves.js"></script>
<!-- Custom Theme JavaScript -->
<script src="<?=ADMIN_ASSETS_PATH?>assets/js/custom.min.js"></script>

<script src="<?=ADMIN_ASSETS_PATH?>assets/plugins/bower_components/styleswitcher/jQuery.style.switcher.js"></script>
<script src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/jquery.validate.min.js"></script>

<link href="https://cdn.datatables.net/1.10.15/css/jquery.dataTables.min.css" rel="stylesheet">

<script src="https://cdn.datatables.net/1.10.15/js/jquery.dataTables.min.js"></script>
    
<script>
    $(document).ready(function() {
    $('#data___tabel').DataTable();
} );
</script>
</html>
