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
                        <h4 class="page-title">Edit Lead Type</h4> </div>
                    <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12"> 
                        <ol class="breadcrumb">
                            <li><a href="javascript:history.go(-1);"><button style="float: right" type="submit" class="btn btn-success waves-effect waves-light m-r-10">Back</button></a></li>
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
                                                    <form action="<?php echo base_url(); ?>admin/categories/update_category" method="POST" enctype='multipart/form-data' class="form-material">
                                                        <input type="hidden" name="id" value="<?= $this->uri->segment(4) ?>">
                                                        <div class="form-group">
                                                            <label for="name">Lead Type</label>
                                                            <input type="text" name="type" class="form-control" id="name" placeholder="Title" value="<?php echo $category->type; ?>"> </div>

                                                        <div class="form-group">
                                                            <label for="exampleInputEmail1">Priority</label>
                                                            <input type="number"  name="priority" class="form-control"  value="<?php echo $category->priority; ?>"> </div>
                                                        <div class="form-group">
                                                            <label for="exampleInputEmail1">Image</label>
                                                            <input type="file" name="image" class="form-control"> </div>
                                                        <div class="form-group">
                                                            <?php if ($category->image != '') { ?>
                                                                <img src="<?= base_url() ?>uploads/category_images/<?= $category->image ?>" width="250">
                                                            <?php } else { ?>
                                                                No-Image
                                                            <?php } ?>
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
