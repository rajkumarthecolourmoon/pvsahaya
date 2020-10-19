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
                        <h4 class="page-title">Add Filter Value</h4> </div>
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
                                                    <form action="<?php echo base_url(); ?>admin/categories/insert_filter_value_sub_sub_category" id="post_form" method="POST" enctype='multipart/form-data' class="form-material" >
                                                        <div class="form-group">
                                                            <label for="name">Filter Value Title</label>
                                                            <input type="text" name="name" class="form-control" id="name" placeholder="Title" value="<?php echo $profile->name; ?>"> </div>
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
                                                            <label for="name">Select Sub-SubCategory</label>
                                                            <select class="form-control subCat" name="ssid" onchange="getFilter();">
                                                                <option value="">--Select--</option>
                                                            </select>
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="name">Select Filter Group</label>
                                                            <select class="form-control filterValue" name="ffid">
                                                                <option value="">--Select--</option>
                                                            </select>
                                                        </div>

                                                        <div class="form-group">
                                                            <label for="exampleInputEmail1">Priority</label>
                                                            <input type="number"  name="priority" class="form-control"  value="<?php echo $profile->priority; ?>"> </div>


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
<script src="<?=ADMIN_ASSETS_PATH?>assets/plugins/bower_components/jquery/dist/jquery.min.js"></script>
<script src="<?=ADMIN_ASSETS_PATH?>assets/js/jquery.validate.min.js"></script>

<script>
    function getSub() {
    var cid = $('.mainCat').val();
    $.ajax({
            type: "POST",
            url: "<?php echo base_url(); ?>admin/ajax/get_sub_sub_categories",
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
    function getFilter() {
    var ssid = $('.subCat').val();
    var cid = $('.mainCat').val();
    $.ajax({
            type: "POST",
            url: "<?php echo base_url(); ?>admin/ajax/get_filter_value_from_sub_subcat",
            data: {
            ssid: ssid,
            cid: cid
            },
            async: false,
            success: function (response) {
            $('.filterValue').html(response);
            },
            error: function () {
            alert('Error occured');
            }
    });
    }
   


   // Setup form validation on the #register-form element
   $("#post_form").validate({
   
       // Specify the validation rules
       rules: {
           name: "required",
           password: "required"
       },       
       // Specify the validation error messages
       messages: {
           name: "*Please enter your 'username'",
           password: "*Please enter your 'password'"
       }
   });

 

</script>
