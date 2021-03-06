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
                        <h4 class="page-title">Social Media</h4> </div>
                    <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12"> 
                        <ol class="breadcrumb">
                            <li><a href="javascript:history.go(-1);"><button style="float: right" type="submit" class="btn btn-success waves-effect waves-light m-r-10">Back</button></a></li>
                            <!--  <li><a href="#">Table</a></li>
                             <li class="active">Data Table</li> -->
                        </ol>
                    </div>
                    <!-- /.col-lg-12 -->
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

                    </div>
                    <div class="col-sm-12">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="white-box">


                                    <div class="row">
                                        <div class="col-md-6 ">
                                            <div class="row">
                                                <div class="col-sm-12 col-xs-12">
                                                    <form action="<?php echo base_url(); ?>admin/dashboard/update_social_media" method="POST" enctype='multipart/form-data' >
                                                        <div class="form-group">
                                                            <label for="exampleInputEmail1">Facebook </label>
                                                            <input type="text" id="title" name="facebook" class="form-control" id="exampleInputEmail1" placeholder="" value="<?php echo $link->facebook; ?>"> 
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="exampleInputEmail1">Twitter </label>
                                                            <input type="text" id="title" name="twitter" class="form-control" id="exampleInputEmail1" placeholder="" value="<?php echo $link->twitter; ?>"> 
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="exampleInputEmail1">Google</label>
                                                            <input type="text" id="title" name="google" class="form-control" id="exampleInputEmail1" placeholder="" value="<?php echo $link->google; ?>"> 
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="exampleInputEmail1">Linkedin</label>
                                                            <input type="text" id="title" name="linkedin" class="form-control" id="exampleInputEmail1" placeholder="" value="<?php echo $link->linkedin; ?>"> 
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="exampleInputEmail1">Youtube</label>
                                                            <input type="text" id="title" name="youtube" class="form-control" id="exampleInputEmail1" placeholder="" value="<?php echo $link->youtube; ?>"> 
                                                        </div>
                                                        
                                                        <button type="submit" class="btn btn-success waves-effect waves-light m-r-10">Update Details</button>
                                                        <!--   <button type="submit" class="btn btn-inverse waves-effect waves-light">Cancel</button> -->
                                                    </form>
                                                </div>
                                            </div>

                                        </div>
                                    </div>

                                </div>
                            </div>
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
