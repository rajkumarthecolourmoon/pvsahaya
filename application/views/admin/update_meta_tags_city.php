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
                        <h4 class="page-title">Update-Meta Tags</h4> </div>
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
                                        <div class="col-md-8 ">
                                            <div class="row">
                                                <div class="col-sm-12 col-xs-12">
                                                    <form action="<?php echo base_url(); ?>admin/seo/update_meta_tags_city/<?= $this->uri->segment(4) ?>" method="POST" enctype='multipart/form-data' class="">
                                                        <div class="form-group">
                                                            <label for="name">City Name</label>
                                                            <input type="text" readonly="readonly" class="form-control" id="name" placeholder="Title" value="<?= $city->name ?>"> </div>
                                                        <div class="form-group well well-grey well-lg">
                                                            <label for="name" class="h4">Enter Meta Tags for Each Lead Priority:</label>
                                                            <?php
                                                            $i = 0;
                                                            foreach ($lead_types as $lead_type) {
                                                                ?>
                                                                <div class="h5 text-info"><i><u><?= $lead_type->type ?></u></i>:</div>
                                                                <input type="hidden" name="lead_type_id[]" value="<?= $lead_type->id ?>">
                                                                <div class="row">

                                                                    <div class="col-md-12 form-group">
                                                                        <label >Meta Title</label>
                                                                        <input type="text" class="form-control" name="mtitle[<?= $lead_type->id ?>]" value="<?= $lead_type->meta_tags->mtitle ?>"> 
                                                                    </div>
                                                                    <div class="col-md-12 form-group">
                                                                        <label >Meta Keywords</label>
                                                                        <textarea class="form-control" name="mkeywords[<?= $lead_type->id ?>]"><?= $lead_type->meta_tags->mtitle ?></textarea>
                                                                        <input type="hidden" class="form-control"  > 
                                                                    </div>
                                                                    <div class="col-md-12 form-group">
                                                                        <label >Meta Description</label>
                                                                        <textarea class="form-control" name="mdescription[<?= $lead_type->id ?>]"><?= $lead_type->meta_tags->mtitle ?></textarea>

                                                                    </div>
                                                                    <div class="col-md-12 form-group">
                                                                        <label >Other Meta Tags</label>
                                                                        <textarea class="form-control" name="mtags[<?= $lead_type->id ?>]"><?= $lead_type->meta_tags->mtitle ?></textarea>
                                                                    </div>
                                                                </div>
                                                                <?php
                                                                $i++;
                                                            }
                                                            ?>
                                                        </div>

                                                        <div class="row">
                                                            <div class="col-md-12">
                                                                <button type="submit" class="btn btn-success waves-effect waves-light m-r-10" style="margin-top: 15px;">Add</button>
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
