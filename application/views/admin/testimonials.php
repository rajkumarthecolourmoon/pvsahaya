<body class="fix-sidebar">
    <!-- Preloader -->
    <!--    <div class="preloader">
            <div class="cssload-speeding-wheel"></div>
        </div>-->

    <div id="wrapper">
        <!-- Top Navigation -->
        <?php include 'includes/sub_header.php'; ?>
        <!-- End Top Navigation -->
        <!-- Left navbar-header -->

        <!-- Left navbar-header end -->
        <!-- Page Content -->
        <div id="page-wrapper">

            <div class="container-fluid">
                <?php
                $msg = $this->session->flashdata('msg');
                if ($msg != '') {
                    ?>
                    <div class="alert alert-success animated bounceIn" role="alert">
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <i class='fa fa-check-circle'></i>  <?= $msg; ?>
                    </div>
                <?php } ?>
                <div class="row bg-title">

                    <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
                        <h4 class="page-title">Testimonials</h4> </div>
                    <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
                        <ol class="breadcrumb">
                            <li><a href="#">Dashboard</a></li>
                            <li><a href="#">Manage Testimonials</a></li>
                        </ol>
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                <!-- /row -->
                <div class="row">
                    <div class="col-sm-12">
                        <div class="white-box">
                            <div class="row">
                                <div class="col-md-6">

                                </div>
                                <div class="col-md-6">
                                    <div class="pull-right" style="margin-bottom: 10px;">
                                        <a href="<?= base_url() ?>admin/cms/add_testimonial"><button type="button" class="fcbtn btn btn-success btn-outline btn-1d"><i class="fa fa-plus"></i> Add Testimonials</button></a>
                                    </div></div></div>
                            <div class="table-responsive">
                                <table id="data___tabel" class="display" cellspacing="0" width="100%">
                                    <thead>
                                        <tr>
                                            <th>S.No</th>                                            
                                            <th>Image</th>
                                            <th>Title</th>
                                            <th>Description</th>
                                            <th>Action</th> 
                                        </tr>
                                    </thead>
                                    <tfoot>
                                    </tfoot>
                                    <tbody>
                                        <?php
                                        $i = 1;
                                        foreach ($testimonials as $testimonial) {
                                            ?>
                                            <tr>
                                                <td><?= $i; ?></td>
                                                <td><img src="<?= base_url() ?>uploads/testimonials/<?= $testimonial->image ?>" width="100" height="70"></td>
                                                <td><?= $testimonial->title ?></td>
                                                <td><?= substr($testimonial->description,0,53); ?>...</td>                                           
                                                <td>
                                                    <div class="btn-group">
                                                        <a href='<?= base_url() ?>admin/cms/edit_testimonial/<?= $testimonial->id ?>' class="fcbtn btn btn-success btn-outline btn-1d">Edit</a>
                                                        <a href='javascript:void(0)' onclick="confirm_delete('<?= $testimonial->id ?>');" class="fcbtn btn btn-danger btn-outline btn-1d">Delete</a>
                                                    </div>
                                                </td>
                                            </tr>
                                            <?php
                                            $i++;
                                        }
                                        ?>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>


                </div>
                <!-- /.row -->
                <!-- .right-sidebar -->
                <div class="right-sidebar">

                </div>
                <!-- /.right-sidebar -->
            </div>
            <!-- /.container-fluid -->
        </div>
        <!-- /#page-wrapper -->
    </div>
    <!-- /#wrapper -->
    <!-- jQuery -->

</body>
<script>
    function confirm_delete(id) {

        if (confirm('Are You sure you want to delete?')) {
            document.location.href = '<?= base_url() ?>admin/cms/delete_testimonial/' + id;
        }
    }
</script>