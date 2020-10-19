<body class="fix-sidebar">
    <!-- Preloader -->
    <!--    <div class="preloader">
            <div class="cssload-speeding-wheel"></div>
        </div>-->

    <div id="wrapper">
        <!-- Top Navigation -->
        <?php include 'includes/sub_header.php'; ?>
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
                        <h4 class="page-title">Vendors</h4> </div>
                    <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
                        <ol class="breadcrumb">
                            <li><a href="#">Dashboard</a></li>
                            <li><a href="#">Manage Vendors</a></li>
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
                                    <h3 class="box-title m-b-0">Manage Vendors</h3>
                                </div>
                                <div class="col-md-6">
                                    <div class="pull-right" style="margin-bottom: 10px;">
<!--                                        <a href="<?= base_url() ?>admin/vendors/add_vendor"><button type="button" class="fcbtn btn btn-success btn-outline btn-1d"><i class="fa fa-plus"></i> Add </button></a>-->
                                    </div></div></div>
                            <div class="table-responsive">
                                <table id="data___tabel" class="display nowrap" cellspacing="0" width="100%">
                                    <thead>
                                        <tr>
                                            <th>S.No</th>
                                            <th>Username</th>
                                            <th>Email</th>
                                            <th>Mobile</th>
                                            <th>Documents</th>
                                            <th>Registered On</th> 
                                            <th>Action</th> 
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
                                            <th>S.No</th>
                                            <th>Username</th>
                                            <th>Email</th>
                                            <th>Mobile</th>
                                            <th>Documents</th>
                                            <th>Registered On</th> 
                                            <th>Action</th> 
                                        </tr>
                                    </tfoot>
                                    <tbody>
                                        <?php
                                        $i = 1;
                                        foreach ($vendors as $vendor) {
                                            ?>
                                            <tr>
                                                <td><?= $i; ?></td>
                                                <td><?= ucfirst(strtolower($vendor->username)) ?></td>
                                                <td><?= ucfirst(strtolower($vendor->email)) ?></td>
                                                <td><?= ucfirst(strtolower($vendor->mobile)) ?></td>
                                                <td>
                                                    <div class="btn-group">
                                                        <a href="<?= base_url() ?>uploads/documents/<?= $vendor->document1 ?>" download ><button type="button" class="btn <?= $vendor->document1 == '' ? 'btn-default' : 'btn-success' ?> btn-outline waves-effect">1</button></a>
                                                        <a href="<?= base_url() ?>uploads/documents/<?= $vendor->document2 ?>" download ><button type="button" class="btn <?= $vendor->document2 == '' ? 'btn-default' : 'btn-success' ?> btn-outline waves-effect">2</button></a>
                                                        <a href="<?= base_url() ?>uploads/documents/<?= $vendor->document3 ?>" download ><button type="button" class="btn <?= $vendor->document3 == '' ? 'btn-default' : 'btn-success' ?> btn-outline waves-effect">3</button></a>
                                                        <a href="<?= base_url() ?>uploads/documents/<?= $vendor->document4 ?>" download ><button type="button" class="btn <?= $vendor->document4 == '' ? 'btn-default' : 'btn-success' ?> btn-outline waves-effect">4</button></a>
                                                    </div>
                                                </td>
                                                <td><?= date('d-m-Y', $vendor->created_at) ?></td>

                                                <td><div class="btn-group">
                                                        <a href='<?= base_url() ?>admin/orders?vendor_id=<?= $vendor->id ?>' class="fcbtn btn btn-success btn-outline btn-1d">View Orders</a>
    <!--                                                        <a href='javascript:void(0)' onclick="confirm_delete('<?= $vendor->id ?>');" class="fcbtn btn btn-danger btn-outline btn-1d">Block User</a>-->
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

        if (confirm('Are You sure you want to delete this Vendor?')) {
            document.location.href = '<?= base_url() ?>admin/vendors/delete_vendor/' + id;
        }
    }
</script>