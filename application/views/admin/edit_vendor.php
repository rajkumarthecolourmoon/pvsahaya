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
                        <h4 class="page-title">Edit-Vendor</h4> </div>
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
                                                    <form action="<?php echo base_url(); ?>admin/vendors/update_vendor" method="POST" enctype='multipart/form-data' class="form-material">
                                                        <input type="hidden" value="<?= $this->uri->segment(4) ?>" name="id">
                                                        <div class="form-group">
                                                            <label for="name">Vendor Name</label>
                                                            <input type="text" name="vendor_name" class="form-control" id="name" placeholder="Title" value="<?php echo $vendor->vendor_name; ?>"> </div>
                                                        <div class="form-group">
                                                            <label for="name">Buisiness Name</label>
                                                            <input type="text" name="vendor_buisiness_name" class="form-control" id="name" placeholder="Title" value="<?php echo $vendor->vendor_buisiness_name; ?>"> </div>
                                                        <div class="form-group">
                                                            <label for="name">Select City</label>
                                                            <select class="form-control" name="city_id">
                                                                <option value="">--Select A City--</option>
                                                                <?php foreach ($cities as $city) { ?>
                                                                    <option value="<?= $city->id ?>" <?php
                                                                    if ($vendor->city_id == $city->id) {
                                                                        echo 'selected';
                                                                    }
                                                                    ?>><?= $city->name ?></option>
                                                                        <?php } ?>
                                                            </select>
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="name">Latitude</label>
                                                            <input type="text" name="latitude" class="form-control" id="name" placeholder="Title" value="<?php echo $vendor->latitude; ?>"> </div>
                                                        <div class="form-group">
                                                            <label for="name">Longitude</label>
                                                            <input type="text" name="longitude" class="form-control" id="name" placeholder="Title" value="<?php echo $vendor->longitude; ?>"> </div>
                                                        <div class="form-group">
                                                            <label for="exampleInputEmail1">Logo</label>
                                                            <input type="file" name="logo" class="form-control"> </div>
                                                        <div class="form-group">
                                                            <label for="exampleInputEmail1">Image</label>
                                                            <img src="<?= base_url() ?>assets/images/<?= $vendor->logo ?>" style="width:200px;height:auto" > </div>
                                                        <div class="form-group">
                                                            <label for="name">Vendor Status</label>
                                                            <select class="form-control" name="status">
                                                                <option value="active" <?php
                                                                if ($vendor->status == 'active') {
                                                                    echo 'selected';
                                                                }
                                                                ?>>Active</option>
                                                                <option value="inactive" <?php
                                                                if ($vendor->status == 'inactive') {
                                                                    echo 'selected';
                                                                }
                                                                ?>>Inactive</option>
                                                            </select>
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="exampleInputEmail1">Username</label>
                                                            <input type="text"  name="username" class="form-control"  value="<?php echo $vendor->username; ?>"> </div>
                                                        <div class="form-group">
                                                            <label for="exampleInputEmail1">Password</label>
                                                            <input type="text"  name="password" class="form-control"  value="<?php echo $vendor->password; ?>"> </div>
                                                        <div class="form-group">
                                                            <label for="exampleInputEmail1">Email</label>
                                                            <input type="text"  name="email" class="form-control"  value="<?php echo $vendor->email; ?>"> </div>
                                                        <div class="form-group">
                                                            <label for="exampleInputEmail1">Mobile 1</label>
                                                            <input type="text"  name="mobile1" class="form-control"  value="<?php echo $vendor->mobile1; ?>"> </div>
                                                        <div class="form-group">
                                                            <label for="exampleInputEmail1">Mobile 2</label>
                                                            <input type="text"  name="mobile2" class="form-control"  value="<?php echo $vendor->mobile2; ?>"> </div>
                                                        <div class="form-group">
                                                            <label for="exampleInputEmail1">Land-Line</label>
                                                            <input type="text"  name="landline" class="form-control"  value="<?php echo $vendor->landline; ?>"> </div>
                                                        <div class="form-group">
                                                            <label for="exampleInputEmail1">Address</label>
                                                            <textarea rows="5" cols="10" class="form-control" id="meta_keywords" name="address"><?php echo $vendor->address; ?></textarea> </div> 
                                                        <div class="form-group">
                                                            <label for="exampleInputEmail1">About</label>
                                                            <textarea rows="5" cols="10" class="form-control" id="meta_keywords" name="about"><?php echo $vendor->about; ?></textarea> </div> 
                                                        <div class="form-group">
                                                            <label for="name">Vendor Rights</label>
                                                            <select class="form-control" name="vendor_edit">
                                                                <option value="yes" <?php
                                                                if ($vendor->vendor_edit == 'yes') {
                                                                    echo 'selected';
                                                                }
                                                                ?>>Allow Editing Products</option>
                                                                <option value="no" <?php
                                                                if ($vendor->vendor_edit == 'no') {
                                                                    echo 'selected';
                                                                }
                                                                ?>>Restrict Editing Products</option>
                                                            </select>
                                                        </div>

                                                        <button type="submit" class="btn btn-success waves-effect waves-light m-r-10">Update</button>
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
