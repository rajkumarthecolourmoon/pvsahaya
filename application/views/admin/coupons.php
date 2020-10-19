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
                        <h4 class="page-title">Products</h4> </div>
                    <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
                        <ol class="breadcrumb">
                            <li><a href="#">Dashboard</a></li>
                            <li><a href="#">Manage Coupons</a></li>
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
                                    <h3 class="box-title m-b-0">Manage Coupons</h3>
                                </div>
                                <div class="col-md-6">
                                    <div class="pull-right" style="margin-bottom: 10px;">
                                        <div class="btn-group m-r-10">
                                            <button aria-expanded="false" data-toggle="dropdown" class="btn btn-info dropdown-toggle waves-effect waves-light" type="button">Add Coupon <span class="caret"></span></button>
                                            <ul role="menu" class="dropdown-menu animated flipInX">
                                                <li><a href="<?= base_url() ?>admin/categories/add_coupon/1">Category Level</a></li>
                                                <li><a href="<?= base_url() ?>admin/categories/add_coupon/2">Sub-category Level</a></li>
                                                <li><a href="<?= base_url() ?>admin/categories/add_coupon/3">Sub Sub-category Level</a></li>
                                                <li><a href="<?= base_url() ?>admin/categories/add_coupon/5">Brand Wise</a></li>
                                                <li class="divider"></li>
                                                <li><a href="<?= base_url() ?>admin/categories/add_coupon/4">Product Specific</a></li>

                                            </ul>
                                        </div>
                                    </div></div></div>
                            <div class="table-responsive">
                                <table id="data___tabel" class="display nowrap" cellspacing="0" width="100%">
                                    <thead>
                                        <tr>
                                            <th>S.No</th>
                                            <th>Coupon Code</th>
                                            <th>Offer</th>
                                            <th>Type</th>
                                            <th>Action</th> 
                                        </tr>
                                    </thead>
                                    <tfoot>
                                    </tfoot>
                                    <tbody>
                                        <?php
                                        $i = 1;
                                        foreach ($coupons as $coupon) {
                                            ?>
                                            <tr>
                                                <td><?= $i; ?></td>
                                                <td><?= $coupon->code ?></td>
                                                <td><?= $coupon->offer ?> <?= $coupon->offer_type == percentage ? '%' : 'Rs' ?></td>
                                                <td><b><?= $coupon->type_d ?> :</b> <?= $coupon->for_type ?></td>
                                                <td><div class="btn-group">
                                                        <a href='<?= base_url() ?>admin/categories/edit_coupon/<?= $coupon->type ?>/<?= $coupon->id ?>' class="fcbtn btn btn-success btn-outline btn-1d">Edit</a>
                                                        <a href='javascript:void(0)' onclick="confirm_delete('<?= $coupon->id ?>');" class="fcbtn btn btn-danger btn-outline btn-1d">Delete</a>
                                                    </div></td>
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

        if (confirm('Are You sure you want to delete this Coupon?')) {
            document.location.href = '<?= base_url() ?>admin/categories/delete_coupon/' + id;
        }
    }
</script>