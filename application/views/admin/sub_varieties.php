<body class="fix-sidebar">
    <!-- Preloader -->
    <!--    <div class="preloader">
            <div class="cssload-speeding-wheel"></div>
        </div>-->

    <div id="wrapper">
        <!-- Top Navigation -->
        <?php
        include 'includes/sub_header.php';
        $plink = $this->uri->segment(4);
        ?>
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
                        <h4 class="page-title">Sub Varieties (<?= $this->uri->segment(4) ?>)</h4> </div>
                    <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
                        <ol class="breadcrumb">
                            <li><a href="#">Dashboard</a></li>
                            <li><a href="#">Manage Sub-Varieties</a></li>
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
                                        <a href="<?= base_url() ?>admin/cms/add_sub_variety/<?= $plink ?>"><button type="button" class="fcbtn btn btn-success btn-outline btn-1d"><i class="fa fa-plus"></i> Add</button></a>
                                        <a href="<?= base_url() ?>admin/cms/varieties"><button type="button" class="fcbtn btn btn-success">Back</button></a>
                                    </div></div></div>
                            <div class="table-responsive">
                                <table id="data___tabel" class="display" cellspacing="0" width="100%">
                                    <thead>
                                        <tr>
                                            <th>S.No</th>
                                            <th>Title</th>
                                            <th>Image</th>
                                            <th>Action</th> 
                                        </tr>
                                    </thead>
                                    <tfoot>
                                    </tfoot>
                                    <tbody>
                                        <?php
                                        $i = 1;
                                        foreach ($rows as $row) {
                                            ?>
                                            <tr>
                                                <td><?= $i; ?></td>
                                                <td><?= $row->title; ?></td>
                                                <td><img src="<?= base_url() ?>uploads/varieties/<?= $row->image ?>" width="100" height="70"></td>
                                                <td>
                                                    <div class="btn-group">
                                                        <a href='<?= base_url() ?>admin/cms/edit_sub_variety/<?= $plink ?>/<?= $row->id ?>' class="fcbtn btn btn-success btn-outline btn-1d">Edit</a>
                                                        <a href='javascript:void(0)' onclick="confirm_delete('<?= $plink ?>',<?= $row->id ?>);" class="fcbtn btn btn-danger btn-outline btn-1d">Delete</a>
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
    function confirm_delete(plink, id) {

        if (confirm('Are You sure you want to delete?')) {
            document.location.href = '<?= base_url() ?>admin/cms/delete_sub_variety/' + plink + '/' + id;
        }
    }
</script>