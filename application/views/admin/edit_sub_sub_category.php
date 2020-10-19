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
                        <h4 class="page-title">Edit Sub-SubCategory</h4> </div>
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
                                                    <form action="<?php echo base_url(); ?>admin/categories/update_sub_sub_category" method="POST" enctype='multipart/form-data' class="form-material">
                                                        <input type='hidden' value="<?=$this->uri->segment(4)?>" name="id">
                                                        <div class="form-group">
                                                            <label for="name">Sub-SubCategory Title</label>
                                                            <input type="text" name="name" class="form-control" id="name" placeholder="Title" value="<?php echo $sub_sub_category->name; ?>"> </div>
                                                        <div class="form-group">
                                                            <label for="name">Select Category</label>
                                                            <select class="form-control mainCat" name="cid" onchange="getSub();">
                                                                <option value="">--Select A Category--</option>
                                                                <?php foreach ($categories as $category) { ?>
                                                                    <option value="<?= $category->id ?>" <?php if($category->id==$sub_sub_category->cid){ echo "selected";}?>><?= $category->name ?></option>
                                                                <?php } ?>
                                                            </select>
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="name">Select SubCategory</label>
                                                            <select class="form-control subCat" name="sid">
                                                                <option value="">--Select--</option>
                                                                <?php foreach ($sub_categories as $sub_category) { ?>
                                                                    <option value="<?= $sub_category->id ?>" <?php if($sub_category->id==$sub_sub_category->sid){ echo "selected";}?>><?= $sub_category->name ?></option>
                                                                <?php } ?>
                                                            </select>
                                                        </div>

                                                        <div class="form-group">
                                                            <label for="exampleInputEmail1">Priority</label>
                                                            <input type="number"  name="priority" class="form-control"  value="<?php echo $sub_sub_category->priority; ?>"> </div>


                                                        <div class="row">
                                                            <div class="col-md-12">
                                                                <button type="submit" class="btn btn-success waves-effect waves-light m-r-10" style="margin-top: 15px;">Update</button>
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
</script>
