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
                        <h4 class="page-title">Reviews</h4> </div>
                    <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
                        <ol class="breadcrumb">
                            <li><a href="#">Dashboard</a></li>
                            <li><a href="#">Manage Reviews</a></li>
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
                                    <h3 class="box-title m-b-0">Manage Reviews</h3>
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
                                            <th>Name</th>
                                            <th>Email</th>
                                            <th>Mobile</th>
                                            <th>Rating</th>
                                            <th>Review</th>
                                            <th>Posted On</th> 
                                            <th>Verify</th>
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
                                            <th>S.No</th>
                                            <th>Name</th>
                                            <th>Email</th>
                                            <th>Mobile</th>
                                            <th>Rating</th>
                                            <th>Review</th>
                                            <th>Posted On</th> 
                                            <th>Verify</th> 
                                        </tr>
                                    </tfoot>
                                    <tbody>
                                        <?php
                                        $i = 1;
                                        foreach ($ratings as $rating) {
                                            ?>
                                            <tr>
                                                <td><?= $i; ?></td>
                                                <td><?= ucfirst(strtolower($rating->name)) ?></td>
                                                <td><?= ucfirst(strtolower($rating->email)) ?></td>
                                                <td><?= ucfirst(strtolower($rating->mobile)) ?></td>
                                                <td><?= ucfirst(strtolower($rating->rating)) ?></td>
                                                <td>
                                                    <span class="mytooltip tooltip-effect-1">
                                                        <span class="tooltip-item">Review</span>
                                                        <span class="tooltip-content clearfix">
                                                            <img src="<?= base_url() ?>uploads/reviews/<?= $rating->image ?>" style="width: 100px; height: auto;">
                                                            <span class="tooltip-text"><?= $rating->review ?></span>
                                                        </span>
                                                    </span>
                                                </td>
                                                <td><?= date('d-m-Y', $rating->created_at) ?></td>

                                                <td>
                                                    <div class="btn-group">
                                                        <?php if ($rating->verified == 0) { ?>
                                                            <a href='<?= base_url() ?>admin/vendors/toggle_review_status/<?= $rating->id ?>' class="fcbtn btn btn-success btn-outline btn-1d">Approve</a>
                                                        <?php } else { ?>
                                                            <a href='<?= base_url() ?>admin/vendors/toggle_review_status/<?= $rating->id ?>' class="fcbtn btn btn-success btn-outline btn-1d">Disapprove</a>
                                                        <?php } ?>
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