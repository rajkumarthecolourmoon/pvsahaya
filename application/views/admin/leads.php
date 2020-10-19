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
                        <h4 class="page-title">Leads</h4> </div>
                    <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
                        <ol class="breadcrumb">
                            <li><a href="#">Dashboard</a></li>
                            <li><a href="#">Manage Leads</a></li>
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
                                    <h3 class="box-title m-b-0">Manage Leads, Export as-</h3>
                                </div>
                            </div>
                            <div class="table-responsive">
                                <table id="data___tabel2" class="display no-wrap" cellspacing="0" width="100%">
                                    <thead>
                                        <tr>
                                            <th>S.No</th>
                                            <th>Lead Type</th>
                                            <th>For Vendor</th>
                                            <th>Name</th>
                                            <th>Mobile</th>
                                            <th>Email</th>
                                            <th>Shifting Size</th> 
                                            <th>Shifting Date</th> 
                                            <th>From Location</th> 
                                            <th>To Location</th> 
                                            <th>Lead Date</th> 
<!--                                            <th>Action</th> -->
                                        </tr>
                                    </thead>
                                    <tfoot>
                                    </tfoot>
                                    <tbody>
                                        <?php
                                        $i = 1;
                                        foreach ($leads as $lead) {
                                            ?>
                                            <tr>
                                                <td><?= $i; ?></td>
                                                <td><?= $lead->lead_type ?></td>
                                                <td><?= $lead->vendor_name ?></td>
                                                <td><?= $lead->name ?></td>
                                                <td><?= $lead->mobile ?></td>
                                                <td><?= $lead->email ?></td>
                                                <td><?= $lead->shifting_size ?></td>
                                                <td><?= $lead->shifting_date ?></td>
                                                <td><?= $lead->location ?></td>
                                                <td><?= $lead->to_location ?></td>
                                                <td><?= date('d-M-Y, h:i sa', $lead->created_at) ?></td>
    <!--                                                <td>
                                                    <div class="btn-group">
                                                        <a href='<?= base_url() ?>admin/orders/view_order/<?= $order->id ?>' class="fcbtn btn btn-success btn-outline btn-1d">Invoice</a>
                                                        <a href='<?= base_url() ?>admin/orders/change_status/<?= $order->id ?>' class="fcbtn btn btn-danger btn-outline btn-1d">Status</a>
                                                    </div>
                                                </td>-->
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