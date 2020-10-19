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
                        <h4 class="page-title">Locations</h4> </div>
                    <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
                        <ol class="breadcrumb">
                            <li><a href="#">Dashboard</a></li>
                            <li><a href="#">Manage Locations</a></li>
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
                                    <h3 class="box-title m-b-0">Manage Locations</h3>
                                </div>
                                </div>
                            <div class="table-responsive">
                                <table id="data___tabel" class="display nowrap" cellspacing="0" width="100%">
                                    <thead>
                                        <tr>
                                            <th>S.No</th>
                                            <th>Location</th>
                                            <th>City</th>
                                            <th>State</th>
                                            <th>Created At</th>
                                            <th>Update Data</th> 
                                        </tr>
                                    </thead>
                                    <tfoot>
                                    </tfoot>
                                    <tbody>
                                        <?php
                                        $i = 1;
                                        foreach ($locations as $location) {
                                            ?>
                                            <tr>
                                                <td><?= $i; ?></td>
                                                <td><?= $location->name ?></td>
                                                <td><?= $location->cityname ?></td>
                                                <td><?= $location->statename ?></td>                                                
                                                <td><?= date('d-m-Y, h:i a', $location->created_at) ?></td>
                                                <td>
                                                    <div class="btn-group">
                                                        <a href='<?= base_url() ?>admin/seo/edit_meta_tags/<?= $location->id ?>' class="fcbtn btn btn-info btn-outline btn-1c">Update Meta Tags</a>
                                                        <a href='<?= base_url() ?>admin/seo/listing_page_tabs_locations/<?= $location->id ?>' class="fcbtn btn btn-info btn-outline btn-1c">Update Content Tabs</a>
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