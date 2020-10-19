<body class="fix-sidebar">
    <?php
    $level = $this->uri->segment(4);
    ?>
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
                        <h4 class="page-title">Add Sub-SubCategory</h4> </div>
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
                                                    <form action="<?php echo base_url(); ?>admin/categories/insert_coupon" method="POST" enctype='multipart/form-data' class="form-material">
                                                        <input type="hidden" name="type" value="<?= $this->uri->segment(4) ?>">
                                                        <?php if ($level == 1 || $level == 2 || $level == 3 || $level == 4) { ?>
                                                            <div class="form-group">
                                                                <label for="name">Select Category</label>
                                                                <select class="form-control mainCat" name="cid" onchange="getSub();">
                                                                    <option value="">--Select A Category--</option>
                                                                    <?php foreach ($categories as $category) { ?>
                                                                        <option value="<?= $category->id ?>"><?= $category->name ?></option>
                                                                    <?php } ?>
                                                                </select>
                                                            </div>
                                                        <?php } ?>
                                                        <?php if ($level == 2 || $level == 3 || $level == 4) { ?>
                                                            <div class="form-group">
                                                                <label for="name">Select SubCategory</label>
                                                                <select class="form-control subCat" name="sid" onchange="getsubsubcat();">
                                                                    <option value="">--Select--</option>
                                                                </select>
                                                            </div>
                                                            <?php if ($level == 3 || $level == 4) { ?>
                                                                <div class="form-group">
                                                                    <label for="name">Select Sub-Sub Category</label>
                                                                    <select class="form-control subsubcat" name="ssid" onchange="getproducts();">
                                                                        <option value="">--Select--</option>
                                                                    </select>
                                                                </div>
                                                                <?php if ($level == 4) { ?>
                                                                    <div class="form-group">
                                                                        <label for="name">Select Products</label>
                                                                        <select class="form-control products" name="productid" >
                                                                            <option value="">--Select--</option>
                                                                        </select>
                                                                    </div>
                                                                <?php } ?>
                                                            <?php } ?>
                                                        <?php } ?>
                                                        <?php if ($level == 5) { ?>
                                                            <div class="form-group">
                                                                <label for="name">Select Brand</label>
                                                                <select class="form-control" name="brand_id">
                                                                    <option value="">--Select A Brand--</option>
                                                                    <?php foreach ($brands as $brand) { ?>
                                                                        <option value="<?= $brand->id ?>"><?= $brand->name ?></option>
                                                                    <?php } ?>
                                                                </select>
                                                            </div>
                                                        <?php } ?>

                                                        <div class="form-group">
                                                            <label for="name">Coupon Code</label>
                                                            <input type="text" name="code" class="form-control" > 
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="name">Offer</label>
                                                            <input type="number" name="offer" class="form-control" > 
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="name">Offer Type</label>
                                                            <select class="form-control" name="offer_type">
                                                                <option value="percentage">In Percentage(Ex : 10%)</option>
                                                                <option value="figure">In Figures (Ex : 100 Rs)</option>
                                                            </select>
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="name">Note</label>
                                                            <input type="text" name="note" class="form-control"> 
                                                        </div>
                                                        <div class="row">
                                                            <div class="col-md-12">
                                                                <button type="submit" class="btn btn-success waves-effect waves-light m-r-10" style="margin-top: 15px;">Add</button>
                                                                <!--   <button type="submit" class="btn btn-inverse waves-effect waves-light">Cancel</button> -->
                                                            </div>
                                                        </div>

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
    <style type="text/css">
        .cbhorz{
            float:left;
            margin: -7px 5px 5px 5px;
            padding-top: 14px;

        }
    </style>
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
    function getproducts() {
        var ssid = $('.subsubcat').val();
        $.ajax({
            type: "POST",
            url: "<?php echo base_url(); ?>admin/ajax/get_products_from_sub_sub_cat",
            data: {
                ssid: ssid
            },
            async: false,
            success: function (response) {
                $('.products').html(response);
            },
            error: function () {
                alert('Error occured');
            }
        });
    }
</script>
