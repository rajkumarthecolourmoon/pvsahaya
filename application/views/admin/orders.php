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
                        <h4 class="page-title">Orders</h4> </div>
                    <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
                        <ol class="breadcrumb">
                            <li><a href="#">Dashboard</a></li>
                            <li><a href="#">Manage Orders</a></li>
                        </ol>
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                <!-- /row -->
                <div class="row">
                    <div class="col-sm-12">
                        <div class="white-box">
                            <div class="panel-group">
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4 class="panel-title">
                                            <a data-toggle="collapse" href="#collapse1">Orders Filter</a>
                                        </h4>
                                    </div>
                                    <div id="collapse1" class="panel-collapse">
                                        <div class="panel-body">

                                            <div class="row">

                                                <form action="" method="GET" >
                                                    <div class="col-md-2 form-group">
                                                        <label>From Date</label>
                                                        <input type="text" class="mydatepicker form-control" name="from_date" value="<?= $_GET['from_date'] ?>">
                                                    </div>
                                                    <div class="col-md-2 form-group">
                                                        <label>To Date</label>
                                                        <input type="text" class="mydatepicker form-control" name="to_date" value="<?= $_GET['to_date'] ?>">
                                                    </div>
                                                    <div class="col-md-2 form-group">
                                                        <button type="submit" class="btn btn-success" > Filter Results >> </button>
                                                    </div>
                                                </form>
                                                <?php if ($orders[0]->fprice != '') { ?>
                                                    <div class="h4">Total Consolidated Amount for this Period: <?= $_GET['from_date'] ?> to <?= $_GET['to_date'] ?> = <?= $orders[0]->fprice ?> Rs</div>
                                                <?php } ?>
                                            </div>

                                        </div>

                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <h3 class="box-title m-b-0">Manage Orders</h3>
                                </div>
                                <div class="col-md-6">
                                    <div class="pull-right" style="margin-bottom: 10px;">
                                        <?php if ($_GET['vendor_id'] != '') { ?>
                                            <a href="<?= base_url() ?>admin/vendors"><button type="button" class="fcbtn btn btn-success btn-outline btn-1d"> Back </button></a>
                                        <?php } ?>
                                    </div></div></div>
                            <div class="table-responsive">
                                <table id="data___tabel" class="display" cellspacing="0" width="100%">
                                    <thead>
                                        <tr>
                                            <th>S.No</th>
                                            <th>Order Id</th>
                                            <th>Order Date</th>
                                            <th>Lead Priority</th>
                                            <th>Expires On</th>
                                            <th>Total Amount(Rs.)</th>
                                            <th>Payment Via</th> 
                                            <th>Payment Status</th> 
                                            <th>Order Status</th> 
                                            <th>Action</th> 
                                        </tr>
                                    </thead>
                                    <tfoot>
                                    </tfoot>
                                    <tbody>
                                        <?php
                                        $i = 1;
                                        if ($orders[0]->id != '') {
                                            foreach ($orders as $order) {
                                                ?>
                                                <tr>
                                                    <td><?= $i; ?></td>
                                                    <td><?= $order->order_id ?></td>
                                                    <td><?= $order->lead_types ?></td>
                                                    <td class="text-blue"><?php if ($order->lead_priority == 1 || $order->lead_priority == 2 || $order->lead_priority == 3) { ?>
                                                            <?= $order->lead_priority ?> Premium
                                                        <?php } else { ?>
                                                            4-12 General
                                                        <?php } ?>
                                                    </td>
                                                    <td><?= date('d-M-Y', $order->expiry_date) ?><?= $order->expiry_date < time() ? '(expired)' : '' ?></td>
                                                    <td><?= $order->final_price ?></td>
                                                    <td><?= $order->payment_type ?></td>
                                                    <td><?= $order->payment_status ?></td>
                                                    <td><?= $order->order_status ?></td>
                                                    <td>
                                                        <div class="btn-group">
                                                            <a href='<?= base_url() ?>admin/orders/view_order/<?= $order->id ?>' class="fcbtn btn btn-success btn-outline btn-1d">Invoice</a>
                                                            <a href='<?= base_url() ?>admin/orders/change_status/<?= $order->id ?>' class="fcbtn btn btn-danger btn-outline btn-1d">Status</a>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <?php
                                                $i++;
                                            }
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