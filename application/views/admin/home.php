<body class="fix-sidebar">
    <!-- Preloader -->
    <div class="preloader">
        <div class="cssload-speeding-wheel"></div>
    </div>
    <div id="wrapper">
        <!-- Top Navigation -->
        <?php include 'includes/sub_header.php'; ?>
        <!-- End Top Navigation -->
        <!-- Left navbar-header -->

        <!-- Left navbar-header end -->
        <!-- Page Content -->
        <div id="page-wrapper">
            <div class="container-fluid">
                <div class="row bg-title">
                    <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
                        <h4 class="page-title"></h4> </div>
                   <!-- <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12"> 
                        <ol class="breadcrumb">
                            <li><a href="<?php //echo base_url(); ?>admin/dashboard/add"><button style="float: right" type="submit" class="btn btn-success waves-effect waves-light m-r-10">Add</button></a></li>
                             <li><a href="#">Table</a></li>
                             <li class="active">Data Table</li>
                        </ol>
                    </div>
                     /.col-lg-12 -->
                </div>
                <!-- /row -->
                <div class="row">

                    <div class="col-md-12">
                        <?php
                        $msg = $this->session->flashdata('msg');
                        if ($msg != "") {
                            ?>
                            <div class="alert alert-success animated bounceIn" role="alert">
                                <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                <i class='fa fa-check-circle'></i>  <?= $msg; ?>
                            </div>
                        <?php } ?>
                        <!-- 
                                <div class="alert alert-success animated bounceIn"> Lorem ipsum dolor sit amet, consectetur adipisicing elit. </div>
                           
                                <div class="alert alert-danger animated bounceIn"> Lorem ipsum dolor sit amet, consectetur adipisicing elit. </div> -->


                    </div>
                    <div class="col-sm-12">
                        <div class="white-box">
                            <div align="center" style="height: 400px;"><h2 >WELCOME TO ADMIN PANEL::<?= $site_details->title ?></h2></div>
                        </div>
                    </div>


                </div>
                <!-- /.row -->

            </div>
            <!-- /.container-fluid -->

            <!--   <footer class="footer text-center"> 2016 &copy; Elite Admin brought to you by themedesigner.in </footer> -->
        </div>
        <!-- /#page-wrapper -->
    </div>

</body>


