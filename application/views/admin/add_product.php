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
                        <h4 class="page-title">Add-Product</h4> </div>
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
                                                    <form action="<?php echo base_url(); ?>admin/products/insert_products" method="POST" enctype='multipart/form-data' class="form-material" id="validation"> 
                                                        <div class="form-group">
                                                            <label for="name">Select Category</label>
                                                            <select class="form-control mainCat" name="cid" onchange="getSub();">
                                                                <option value="">--Select A Category--</option>
                                                                <?php foreach ($categories as $category) { ?>
                                                                    <option value="<?= $category->id ?>"><?= $category->name ?></option>
                                                                <?php } ?>
                                                            </select>
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="name">Select SubCategory</label>
                                                            <select class="form-control subCat" name="sid" onchange="getsubsubcat();">
                                                                <option value="">--Select--</option>
                                                            </select>
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="name">Select Sub-Sub Category</label>
                                                            <select class="form-control subsubcat" name="ssid">
                                                                <option value="">--Select--</option>
                                                            </select>
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="name">Product Title</label>
                                                            <input type="text" name="name" class="form-control" id="name" placeholder="Title" value="<?php echo $profile->name; ?>"> </div>
                                                        <div class="form-group">
                                                            <label for="name">Select City</label>
                                                            <select class="form-control" name="city_id">
                                                                <option value="">--Select A City--</option>
                                                                <?php foreach ($cities as $city) { ?>
                                                                    <option value="<?= $city->id ?>"><?= $city->name ?></option>
                                                                <?php } ?>
                                                            </select>
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="name">Offer</label>
                                                            <select class="form-control" name="offer">
                                                                <option value="">--Select--</option>
                                                                <option value="yes">Yes</option>
                                                                <option value="no">No</option>
                                                            </select>
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="name">M.R.P Price</label>
                                                            <input type="text" name="mrp_price" class="form-control" id="name" placeholder="" value="<?php echo $profile->name; ?>"> </div>
                                                        <div class="form-group">
                                                            <label for="name">Sale Price</label>
                                                            <input type="text" name="sale_price" class="form-control" id="name" placeholder="" value="<?php echo $profile->name; ?>"> </div>
                                                        <div class="form-group">
                                                            <label for="name">Select Vendor</label>
                                                            <select class="form-control" name="status" onchange="getlat_lng();" id="vendor_id">
                                                                <option value="">--Select Vendor--</option>
                                                                <?php foreach ($vendors as $vendor) { ?>
                                                                    <option value="<?= $vendor->id ?>"><?= $vendor->vendor_buisiness_name ?></option>
                                                                <?php } ?>
                                                            </select>
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="exampleInputEmail1">Latitude</label>
                                                            <input type="text"  name="latitude" class="form-control"  value="<?php echo $profile->priority; ?>"> </div>
                                                        <div class="form-group">
                                                            <label for="exampleInputEmail1">Longitude</label>
                                                            <input type="text"  name="logitude" class="form-control"  value="<?php echo $profile->password; ?>"> </div>
                                                        <div class="form-group">
                                                            <label for="exampleInputEmail1">Availability</label>
                                                            <select class="form-control" name="status">
                                                                <option value="">--Stock Availabilty--</option>
                                                                <option value="yes">Yes</option>
                                                                <option value="no">No</option>

                                                            </select>
                                                        </div>
                                                            <div class="form-group">
                                                                <label for="exampleInputEmail1">Short Description</label>
                                                                <input type="text"  name="short_description" class="form-control"  value="<?php echo $profile->password; ?>"> </div>
                                                            <div class="form-group">
                                                                <label for="exampleInputEmail1">Description</label>
                                                                <input type="text"  name="description" class="form-control"  value="<?php echo $profile->password; ?>"> </div>
                                                            <div class="form-group">
                                                                <label for="exampleInputEmail1">Specification</label>
                                                                <input type="text"  name="specification" class="form-control"  value="<?php echo $profile->password; ?>"> </div>

                                                            <button type="submit" class="btn btn-success waves-effect waves-light m-r-10">Add</button>
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
<script>
    function getSub() {
        var cid = $('.mainCat').val();
        $.ajax({
            type: "POST",
            url: "<?php echo base_url(); ?>admin/ajax",
            data: {
                cid: cid
            },
            async: false,
            success: function (response) {
                $('.subCat').html(response);
            },
            error: function () {
                alert('Error occured');
            }
        });
    }
    function getsubsubcat() {
        var sid = $('.subCat').val();
        var cid = $('.mainCat').val();
        $.ajax({
            type: "POST",
            url: "<?php echo base_url(); ?>admin/ajax/get_sub_subcat_from_subcat",
            data: {
                sid: sid,
                cid: cid
            },
            async: false,
            success: function (response) {
                $('.subsubcat').html(response);
            },
            error: function () {
                alert('Error occured');
            }
        });
    }
    function getlat_lng() {
        var vid = $('vendor_id').val();
        var cid = $('.mainCat').val();
        $.ajax({
            type: "POST",
            url: "<?php echo base_url(); ?>admin/ajax/get_sub_subcat_from_subcat",
            data: {
                sid: sid,
                cid: cid
            },
            async: false,
            success: function (response) {
                $('.subsubcat').html(response);
            },
            error: function () {
                alert('Error occured');
            }
        });
    }
</script>