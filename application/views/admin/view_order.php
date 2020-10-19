<body class="fix-sidebar">
    <!-- Preloader -->
    <div class="preloader">
        <div class="cssload-speeding-wheel"></div>
    </div>
    <div id="wrapper">
        <!-- Top Navigation -->
        <?php include 'includes/sub_header.php'; ?>
        <!-- Left navbar-header end -->
        <!-- Page Content -->
        <div id="page-wrapper" class="printdiv">
            <div class="container-fluid">
                <div class="row bg-title">
                    <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
                        <h4 class="page-title"></h4>
                    </div>
                    <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
                        <ol class="breadcrumb">
                            <li><a href="#">Orders</a></li>
                            <li class="active">Invoice</li>
                        </ol>
                    </div>
                </div>
                <!-- /.row -->
                <div class="row">
                    <div class="col-md-12">
                        <div class="white-box">
                            <h3><b>INVOICE</b> <span class="pull-right"># <?= $order->order_id ?></span></h3>
                            <hr>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="pull-left">
                                        <address>
                                            <h3> &nbsp;<b class="text-danger"><?= $order->business_name ?></b></h3>
                                            <p class="text-muted m-l-5"><?= $order->buisiness_address ?>,<br />
                                                <?= $order->buisiness_phone1 ?>,<br />
                                                <?= $order->buisiness_phone2 ?>,<br />
                                                <?= $order->whatsapp_number ?></p>,<br /> 
                                            <?= $order->url ?>

                                        </address>
                                    </div>
                                    <div  class="pull-right text-right">
                                        <address>
                                            <p class="m-t-30"><b>Order Placed On :</b> <i class="fa fa-calendar"></i> <?= date('d-M-Y, h:i sa', $order->updated_at) ?></p>
                                            <p><b>Expiry Date :</b> <i class="fa fa-calendar"></i> <?= date('d-M-Y', $order->expiry_date) ?></p>
                                            <p><b>Payment Via :</b> <?= $order->payment_type ?></p>
                                            <p><b>Txn Id:</b> <?= $order->txn_id ?></p>
                                            <p><b>Order Status :</b> <?= $order->order_status ?></p>
                                            <p><b>Payment Status :</b> <?= $order->payment_status ?></p>
                                        </address>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="table-responsive m-t-40">
                                        <table class="table table-hover">
                                            <thead>
                                                <tr>
                                                    <th class="text-center">#</th>
                                                    <th>Location</th>
                                                    <th>Lead Type</th>
                                                    <th>Price Rs.</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <?php
                                                $i = 1;
                                                foreach ($order_items as $order_item) {
                                                    ?>
                                                    <tr>
                                                        <td class="text-center"><?= $i; ?></td>
                                                        <td><?= $order_item->state_name ?>,<?= $order_item->city_name ?>-<?= $order_item->location_name != '' ? $order_item->location_name : 'Main City' ?></td>
                                                        <td><?= $order_item->lead_type_name ?></td>
                                                        <td class="text-left"><?= $order_item->price ?> Rs.</td>
                                                    </tr>
                                                    <?php
                                                    $i++;
                                                }
                                                ?>

                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="pull-right m-t-30 text-right">
                                        <p>Sub - Total amount: <b>Rs: <?= $order->sub_total ?></b></p>
                                        <p>Package Name: <b><?= $package->title ?> </b></p>
                                        <?php if ($order->discount != 0) { ?>
                                            <p>Discount (<?= $order->discount ?>) : Rs <?= $order->discount ?> </p>
                                        <?php } ?>
                                        <hr>
                                        <h3><b>Total :</b> Rs. <?= $order->final_price ?></h3>
                                    </div>
                                    <div class="clearfix"></div>
                                    <hr>
                                    <div class="text-right">
                                        <a href="<?= base_url() ?>admin/orders/change_status/<?= $order->id ?>" class="btn btn-danger"> Change Order Status </a>
                                        <button onclick="javascript:printDiv('printablediv')" class="btn btn-default btn-outline" type="button"> <span><i class="fa fa-print"></i> Print</span> </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- /.container-fluid -->
        </div>
        <!-- /#page-wrapper -->
    </div>
    <!-- /#wrapper -->
    <script language="javascript" type="text/javascript">
        function printDiv() {
            //Get the HTML of div
            var divElements = $('.printdiv').html();
            //Get the HTML of whole page
            var oldPage = document.body.innerHTML;

            //Reset the page's HTML with div's HTML only
            document.body.innerHTML =
                    "<html><head><title></title></head><body>" +
                    divElements + "</body>";

            //Print Page
            window.print();

            //Restore orignal HTML
            document.body.innerHTML = oldPage;


        }
    </script>
</body>
</html>
