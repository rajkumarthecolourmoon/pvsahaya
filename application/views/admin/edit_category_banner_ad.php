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
                        <h4 class="page-title">Edit-Category Banners Ads</h4> </div>
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
                                                    <form action="<?php echo base_url(); ?>admin/cms/update_category_banners_ads" method="POST" enctype='multipart/form-data' class="form-material">
                                                        <input type="hidden" name="id" value="<?= $this->uri->segment(4) ?>">
                                                        <div class="form-group">
                                                            <label for="name">Category Title</label>
                                                            <select class="form-control" name="cid">
                                                                <option value="">--Select A Category--</option>
                                                                <?php foreach ($categories as $category) { ?>
                                                                    <option value="<?= $category->id ?>" <?php
                                                                    if ($category->id == $row->cid) {
                                                                        echo "selected";
                                                                    }
                                                                    ?>><?= $category->name ?></option>
                                                                        <?php } ?>
                                                            </select>
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="exampleInputEmail1">Priority</label>
                                                            <input type="number"  name="priority" class="form-control"  value="<?php echo $row->priority; ?>"> </div>
                                                        <div class="row">
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label for="exampleInputEmail1">Prev Banner Image 1</label>
                                                                    <?php if ($row->banner1 != '') { ?>
                                                                        <img src="<?= base_url() ?>assets/images/category_banners/<?= $row->banner1 ?>" width="250">
                                                                    <?php } else { ?>
                                                                        No-Image
                                                                    <?php } ?>
                                                                </div>
                                                            </div>

                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label for="exampleInputEmail1">Prev Banner Image 2</label>
                                                                    <?php if ($row->banner1 != '') { ?>
                                                                        <img src="<?= base_url() ?>assets/images/category_banners/<?= $row->banner1 ?>" width="250">
                                                                    <?php } else { ?>
                                                                        No-Image
                                                                    <?php } ?>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="exampleInputEmail1">Banner Image 1</label>
                                                            <input type="file" name="banner1" class="form-control"> </div>
                                                        <div class="form-group">
                                                            <label for="exampleInputEmail1">Banner Image 2</label>
                                                            <input type="file" name="banner2" class="form-control"> </div>
                                                        <div class="row">
                                                            <div class="col-md-4">
                                                                <div class="form-group">
                                                                    <label for="exampleInputEmail1">Prev Ad Image Left</label>
                                                                    <?php if ($row->ad_left != '') { ?>
                                                                        <img src="<?= base_url() ?>assets/images/category_ads/<?= $row->ad_left ?>" width="250">
                                                                    <?php } else { ?>
                                                                        No-Image
                                                                    <?php } ?>
                                                                </div>
                                                            </div>

                                                            <div class="col-md-4">
                                                                <div class="form-group">
                                                                    <label for="exampleInputEmail1">Prev Ad Image Center</label>
                                                                    <?php if ($row->ad_center != '') { ?>
                                                                        <img src="<?= base_url() ?>assets/images/category_ads/<?= $row->ad_center ?>" width="250">
                                                                    <?php } else { ?>
                                                                        No-Image
                                                                    <?php } ?>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-4">
                                                                <div class="form-group">
                                                                    <label for="exampleInputEmail1">Prev Ad Image Right</label>
                                                                    <?php if ($row->ad_right != '') { ?>
                                                                        <img src="<?= base_url() ?>assets/images/category_ads/<?= $row->ad_right ?>" width="250">
                                                                    <?php } else { ?>
                                                                        No-Image
                                                                    <?php } ?>
                                                                </div>
                                                            </div>
                                                        </div>   
                                                        <div class="form-group">
                                                            <label for="exampleInputEmail1">Prev Ad Image Right</label>
                                                            <input type="file" name="ad_left" class="form-control"> </div>
                                                        <div class="form-group">
                                                            <label for="exampleInputEmail1">Ad-Image Center</label>
                                                            <input type="file" name="ad_center" class="form-control"> </div>
                                                        <div class="form-group">
                                                            <label for="exampleInputEmail1">Ad-Image Right</label>
                                                            <input type="file" name="ad_right" class="form-control"> </div>
                                                        <div class="form-group">
                                                            <label for="exampleInputEmail1">Ad-Image Link Left</label>
                                                            <input type="text" name="ad_link_left" class="form-control" id="exampleInputEmail1"  value="<?php echo $row->ad_link_left; ?>"> </div>
                                                        <div class="form-group">
                                                            <label for="exampleInputEmail1">Ad-Image Link Center</label>
                                                            <input type="text" name="ad_link_center" class="form-control" id="exampleInputEmail1"  value="<?php echo $row->ad_link_center; ?>"> </div>
                                                        <div class="form-group">
                                                            <label for="exampleInputEmail1">Ad-Image Link Right</label>
                                                            <input type="text" name="ad_link_right" class="form-control" id="exampleInputEmail1"  value="<?php echo $row->ad_link_right; ?>"> </div>

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
