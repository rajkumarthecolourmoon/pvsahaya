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
                        <h4 class="page-title">Update Order Status</h4> </div>
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
                                                    <form action="<?php echo base_url(); ?>admin/orders/update_status/<?= $this->uri->segment(4) ?>/<?= $order->order_id ?>" method="POST" enctype='multipart/form-data'>
                                                        <div class="form-group">
                                                            <label for="name">Payment Status</label>
                                                            <select class="form-control" name="payment_status">
                                                                <option value="" disabled="disabled">--Select--</option>
                                                                <option value="failed" <?= $order->payment_status == 'failed' ? 'selected' : '' ?> >Payment Failed</option>
                                                                <option value="success" <?= $order->payment_status == 'success' ? 'selected' : '' ?> >Payment Success</option>
                                                            </select>
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="name">Order Status</label>
                                                            <select class="form-control" name="order_status">
                                                                <option value="" disabled="disabled">--Select--</option>
                                                                <option value="pending" <?= $order->order_status == 'pending' ? 'selected' : '' ?> >Pending</option>
                                                                <option value="accepted" <?= $order->order_status == 'accepted' ? 'selected' : '' ?>>Accepted</option>
                                                            </select>
                                                        </div>

                                                        <button type="submit" class="btn btn-success waves-effect waves-light m-r-10">Update Order Status >></button>
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
<script>
    $('.order_selector').on('change', function () {
        var payment_status = $(this).val();
        if (payment_status == 'processing' || payment_status == 'cancelled') {
            $('.courier_selector').val('').attr('disabled', 'disabled');
            $('.remarks_selector').val('').attr('disabled', 'disabled');
            $('.tracking_selector').val('').attr('disabled', 'disabled');
            $('.delivery_selector').val('').attr('disabled', 'disabled');
        }
        if (payment_status == 'on_shipping' || payment_status == 'delivered') {
            $('.courier_selector').removeAttr('disabled');
            $('.remarks_selector').removeAttr('disabled');
            $('.tracking_selector').removeAttr('disabled');
            $('.delivery_selector').removeAttr('disabled');
        }


    });
</script>
