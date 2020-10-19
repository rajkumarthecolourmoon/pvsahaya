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
                        <h4 class="page-title"><?php if(isset($achievements)){?>Update Achievements <?php }else{?>Add Achievements<?php }?></h4> </div>
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
                                        <div class="col-md-12 ">
                                            <div class="row">
                                                <div class="col-sm-12 col-xs-12">
                                                    <form action="<?php echo base_url(); ?>admin/cms/insert_achievements/<?php echo $this->uri->segment(4);?>" method="POST" enctype='multipart/form-data' class="form-material">

                                                        <div class="form-group">
                                                            <label for="name">Image</label>
                                                            <input type="file" name="image" class="form-control" > 
                                                        </div>
                                                        <?php if(isset($achievements)){?>
                                                        <div class="form-group">
                                                            <label for="name">Previous Image</label>
                                                            <img src="<?= base_url();?>uploads/achievements/<?= $achievements->image;?>"> 
                                                        </div>
                                                        <?php }?>
                                                        <div>
                                                            <p id="intimate" style="color:red">Image should be equal to  (Natural: 270 × 250 pixels)</p>
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="name">Title</label>
                                                            <input type="text" name="title" class="form-control" value="<?= $achievements->title?>"> 
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="name">Description</label>
                                                            <textarea name="description" class="ckeditor" ><?= $achievements->description ?></textarea>  
                                                        </div>   
                                                        <?php if(isset($achievements)){?>
                                                        <div class="row">
                                                            <div class="col-md-12">
                                                                <button type="submit" class="btn btn-success waves-effect waves-light m-r-10" style="margin-top: 15px;">Update</button>
                                                            </div>
                                                        </div>
                                                        <?php }else{?>
                                                        <div class="row">
                                                            <div class="col-md-12">
                                                                <button type="submit" class="btn btn-success waves-effect waves-light m-r-10" style="margin-top: 15px;">Add</button>
                                                            </div>
                                                        </div>
                                                        <?php }?>
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
