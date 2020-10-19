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
                        <h4 class="page-title">Reports</h4> </div>
                    <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
                        <ol class="breadcrumb">
                            <li><a href="#">Dashboard</a></li>
                            <li><a href="#">Manage Reports</a></li>
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
                                            <a data-toggle="collapse" href="#collapse1">Export Report</a>
                                        </h4>
                                    </div>
                                    <div id="collapse1" class="panel-collapse">
                                        <div class="panel-body">

                                            <div class="row">

                                                <form action="" method="GET" >
                                                    <div class="col-md-2 form-group">
                                                        <label> Order Status</label>
                                                        <select class="form-control" name="order_status">
                                                            <option value="">All</option>
                                                            <option value="processing" <?= $_GET['order_status'] == 'processing' ? 'selected' : '' ?> >Processing</option>
                                                            <option value="on_shipping" <?= $_GET['order_status'] == 'on_shipping' ? 'selected' : '' ?>>On Shipping</option>
                                                            <option value="delivered" <?= $_GET['order_status'] == 'delivered' ? 'selected' : '' ?>>Delivered</option>
                                                            <option value="cancelled" <?= $_GET['order_status'] == 'cancelled' ? 'selected' : '' ?>>Canceled</option>
                                                        </select>
                                                    </div>
                                                    <div class="col-md-2 form-group">
                                                        <label> Payment Status</label>
                                                        <select class="form-control" name="payment_status">
                                                            <option value="">All</option>
                                                            <option value="paid" <?= $_GET['payment_status'] == 'paid' ? 'selected' : '' ?>>Paid</option>
                                                            <option value="not_paid" <?= $_GET['payment_status'] == 'not_paid' ? 'selected' : '' ?>>Not Paid</option>
                                                        </select>
                                                    </div>
                                                    <div class="col-md-2 form-group">
                                                        <label> Payment Method</label>
                                                        <select class="form-control" name="payment_method">
                                                            <option value="">All</option>
                                                            <option value="cod" <?= $_GET['payment_method'] == 'cod' ? 'selected' : '' ?>>COD</option>
                                                            <option value="not_paid" <?= $_GET['payment_method'] == 'not_paid' ? 'selected' : '' ?>>Payment Gateway</option>
                                                        </select>
                                                    </div>
                                                    <div class="col-md-2 form-group">
                                                        <label> From </label>
                                                        <input type="text"  name="from_date" class="form-control mydatepicker" value="<?= $_GET['from_date'] ?>">
                                                    </div>
                                                    <div class="col-md-2 form-group">
                                                        <label> To  </label>
                                                        <input type="text"  name="to_date" class="form-control mydatepicker" value="<?= $_GET['to_date'] ?>">
                                                    </div>
                                                    <div class="col-md-2 form-group">
                                                        <button type="submit" class="btn btn-success" > Filter Results >> </button>
                                                    </div>
                                                </form>
                                            </div>

                                        </div>

                                    </div>
                                </div>
                            </div>



                            <div class="row">
                                <div class="col-md-6">
                                    <h3 class="box-title m-b-0">Manage Reports, Export as-</h3>
                                </div>
                            </div>
                            <div class="table-responsive">
                                <table id="data___tabel2" class="display nowrap" cellspacing="0" width="100%">
                                    <thead>
                                        <tr>
                                            <th>S.No</th>
                                            <th>Order Id</th>
                                            <th>Order Date</th>
                                            <th>Total Amount(Rs.)</th>
                                            <th>Payment Via</th> 
                                            <th>Payment Status</th> 
                                            <th>Order Status</th> 
<!--                                            <th>Action</th> -->
                                        </tr>
                                    </thead>
                                    <tfoot>
                                    </tfoot>
                                    <tbody>
                                        <?php
                                        $i = 1;
                                        foreach ($orders as $order) {
                                            ?>
                                            <tr>
                                                <td><?= $i; ?></td>
                                                <td><?= $order->order_id ?></td>
                                                <td><?= date('d-m-y,h:i a', $order->created_at) ?></td>
                                                <td><?= $order->grand_total ?></td>
                                                <td><?= $order->payment_option ?></td>
                                                <td><?= $order->payment_status ?></td>
                                                <td><?= $order->order_status ?></td>
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