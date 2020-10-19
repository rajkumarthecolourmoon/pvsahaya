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
                        <h4 class="page-title">Profile</h4> </div>
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
                                                    <form action="<?php echo base_url(); ?>admin/dashboard/update_profile" method="POST" enctype='multipart/form-data' >
                                                        <div class="form-group">
                                                            <label for="exampleInputEmail1">Title</label>
                                                            <input type="text" id="title" name="title" class="form-control" id="exampleInputEmail1" placeholder="Title" value="<?php echo $profile->title; ?>"> </div>
                                                        <div class="form-group">
                                                            <label for="exampleInputEmail1">Email</label>
                                                            <input type="email" id="email" name="email" class="form-control" id="exampleInputEmail1" placeholder="Enter email" value="<?php echo $profile->email; ?>"> </div>
                                                        <div class="form-group">
                                                            <label for="exampleInputEmail1">Fmail</label>
                                                            <input type="email" id="fmail" name="fmail" class="form-control" id="exampleInputEmail1" placeholder="Enter email" value="<?php echo $profile->fmail; ?>"> </div>
                                                        <div class="form-group">
                                                            <label for="exampleInputEmail1">Phone</label>
                                                            <input type="text" id="phone" name="phone" class="form-control" id="exampleInputEmail1" placeholder="Enter Phone" value="<?php echo $profile->phone; ?>"> </div>
                                                            <div class="form-group">
                                                            <label for="exampleInputEmail1">map_link</label>
                                                            <input type="text" id="map" name="map" class="form-control" id="exampleInputEmail1" placeholder="Enter map link" value="<?php echo $profile->map; ?>"> </div>
                                                        <div class="form-group">
                                                            <label for="exampleInputEmail1">Footer code</label>
                                                            <input type="text" id="foot" name="foot" class="form-control" id="exampleInputEmail1" placeholder="Enter footer code" value="<?php echo $profile->foot; ?>"> </div>
                                                        <div class="form-group">
                                                            <label for="exampleInputEmail1">Logo</label>
                                                            <input type="file" id="file" name="file" class="form-control" id="exampleInputEmail1" value="<?php echo $profile->logo; ?>" > </div>
                                                        <label for="exampleInputEmail1">Present Logo:</label>
                                                        <?php
                                                        if ($profile->logo != '') {
                                                            ?>
                                                            <img src="<?php echo base_url(); ?>assets/images/<?php echo $profile->logo; ?>" width="250">
                                                            <?php
                                                        } else {
                                                            echo "No logo";
                                                        }
                                                        ?>
                                                        <div class="form-group">
                                                            <label for="exampleInputEmail1">Fav icon</label>
                                                            <input type="file" id="file2" name="file2" class="form-control" id="exampleInputEmail1" value="<?php echo $profile->fav; ?>"> </div>
                                                        <label for="exampleInputEmail1">Present Fav Icon:</label>
                                                        <?php
                                                        if ($profile->fav != '') {
                                                            ?>
                                                            <img src="<?php echo base_url(); ?>assets/images/<?php echo $profile->fav; ?>" width="150">
                                                            <?php
                                                        } else {
                                                            echo "No fav icon";
                                                        }
                                                        ?>

                                                        <div class="form-group">
                                                            <label for="exampleInputEmail1">Address</label>
                                                            <textarea rows="5" cols="10" class="form-control" id="address" name="address"><?php echo $profile->address; ?></textarea> </div> 

                                                        <div class="form-group">
                                                            <label for="exampleInputEmail1">Meta Keywords</label>
                                                            <textarea rows="5" cols="10" class="form-control" id="meta_keywords" name="meta_keywords"><?php echo $profile->meta_keywords; ?></textarea> </div> 
                                                        <div class="form-group">
                                                            <label for="exampleInputEmail1">Meta Description</label>
                                                            <textarea rows="5" cols="10" class="form-control" id="meta_description" name="meta_description"><?php echo $profile->meta_description; ?></textarea> </div>
                                                        <div class="form-group">
                                                            <label for="exampleInputEmail1">Footer Description</label>
                                                            <textarea rows="5" cols="10" class="form-control" id="meta_description" name="foot_description"><?php echo $profile->foot_description; ?></textarea> </div>



                                                        <button type="submit" class="btn btn-success waves-effect waves-light m-r-10">Update profile</button>
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
