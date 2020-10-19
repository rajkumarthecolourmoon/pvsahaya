<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon" type="image/png" sizes="16x16" href="<?=ADMIN_ASSETS_PATH?>/assets/plugins/images/favicon.png">
<title>ADMIN</title>
<!-- Bootstrap Core CSS -->
<link href="<?=ADMIN_ASSETS_PATH?>assets/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
<!-- animation CSS -->
<link href="<?=ADMIN_ASSETS_PATH?>assets/css/animate.css" rel="stylesheet">
<!-- Custom CSS -->
<link href="<?=ADMIN_ASSETS_PATH?>assets/css/style.css" rel="stylesheet">
<!-- color CSS -->
<link href="<?=ADMIN_ASSETS_PATH?>assets/css/colors/blue.css" id="theme"  rel="stylesheet">
<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->
</head>
<style type="text/css">
  .login-register {
    background: url(<?=ADMIN_ASSETS_PATH?>assets/plugins/images/login-register.jpg) no-repeat center center / cover !important;
    height: 100%;
    position: fixed;
}
</style>

<body>
<!-- Preloader -->

<section id="wrapper" class="login-register">
  <div class="login-box">
    <div class="white-box">
      <form class="form-horizontal form-material" id="form" action="<?php echo base_url(); ?>admin/login/admin_login" method="post">

       <?php $msg = $this->session->flashdata('msg');
       if($msg != "") { ?>
       <div class="alert alert-success animated bounceIn" role="alert">
  <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
  <i class='fa fa-check-circle'></i>  <?=$msg;?>
</div>
       <?php } ?>
        <?php $error = $this->session->flashdata('error');
       if($error != "") { ?>
       <div class="alert alert-danger animated bounceIn" role="alert">
  <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
  <i class='fa fa-check-circle'></i>  <?=$error;?>
</div>
       <?php } ?>

        <h3 class="box-title m-b-20">Sign In</h3>
        <div class="form-group ">
          <div class="col-xs-12">
            <input class="form-control" type="text" id="username" name="username" placeholder="Username">
          </div>
        </div>
        <div class="form-group">
          <div class="col-xs-12">
            <input class="form-control" type="password" id="password" name="password"  placeholder="Password">
          </div>
        </div>
        <div class="form-group">
          <div class="col-md-12">
          
            <a href="javascript:void(0)" id="to-recover" class="text-dark pull-right"><i class="fa fa-lock m-r-5"></i> Forgot pwd?</a> </div>
        </div>
        <div class="form-group text-center m-t-20">
          <div class="col-xs-12">
            <button class="btn btn-info btn-lg btn-block text-uppercase waves-effect waves-light" type="submit">Log In</button>
          </div>
        </div>
   
    
      </form>
      <form class="form-horizontal" id="recoverform" action="index.html">
        <div class="form-group ">
          <div class="col-xs-12">
            <h3>Recover Password</h3>
            <p class="text-muted">Enter your Email and instructions will be sent to you! </p>
          </div>
        </div>
        <div class="form-group ">
          <div class="col-xs-12">
            <input class="form-control" type="text" required="" placeholder="Email">
          </div>
        </div>
        <div class="form-group text-center m-t-20">
          <div class="col-xs-12">
            <button class="btn btn-primary btn-lg btn-block text-uppercase waves-effect waves-light" type="submit">Reset</button>
          </div>
        </div>
      </form>
    </div>
  </div>
</section>

</body>
</html>
<script src="<?=ADMIN_ASSETS_PATH?>assets/plugins/bower_components/jquery/dist/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/jquery.validate.min.js"></script>

<script type="text/javascript">
   $(function() {
    // Setup form validation on the #register-form element
    $("#form").validate({
    
        // Specify the validation rules
        rules: {
            username: "required",
            password: "required"
        },       
        // Specify the validation error messages
        messages: {
            username: "*Please enter your 'username'",
            password: "*Please enter your 'password'", 
        },
    });
  });
  
  </script>
