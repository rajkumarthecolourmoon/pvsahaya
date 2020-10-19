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
                        <h4 class="page-title">Users</h4> </div>
                    <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
                        <ol class="breadcrumb">
                            <li><a href="#">Dashboard</a></li>
                            <li><a href="#">Manage Users</a></li>
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
                                            <a data-toggle="collapse" href="#collapse1">Product Filter</a>
                                        </h4>
                                    </div>
                                    <div id="collapse1" class="panel-collapse">
                                        <div class="panel-body">

                                            <div class="row">

                                                <form action="" method="GET" >
                                                    <div class="col-md-2 form-group">
                                                        <label>City</label>
                                                        <select class="form-control" name="city_id">
                                                            <option value="">All</option>
                                                            <?php foreach ($cities as $city) { ?>
                                                                <option value="<?= $city->id ?>" <?= $city->id == $_GET['city_id'] ? 'selected' : '' ?>><?= $city->name ?></option>
                                                            <?php } ?>
                                                        </select>
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
                                    <h3 class="box-title m-b-0">Manage Users</h3>
                                </div>
                            </div>
                            <div class="table-responsive">
                                <table id="data___tabel_users" class="display nowrap" cellspacing="0" width="100%">
                                    <thead>
                                        <tr>
                                            <th>S.No</th>
                                            <th>Name</th>
                                            <th>Email</th>
                                            <th>Mobile</th>
                                            <th>City</th>
                                            <th>Registered On</th> 
                                            <th>Mobile Verified</th> 
                                            <th>Delete</th> 
                                        </tr>
                                    </thead>
                                    <tfoot>
                                    </tfoot>
                                    <tbody>
                                        <?php
                                        $i = 1;
                                        foreach ($users as $user) {
                                            ?>
                                            <tr>
                                                <td><?= $i; ?></td>
                                                <td><?= ucfirst(strtolower($user->name)) ?></td>
                                                <td><?= ucfirst(strtolower($user->username)) ?></td>
                                                <td><?= ucfirst(strtolower($user->mobile)) ?></td>
                                                <td><?= ucfirst(strtolower($user->city_name)) ?></td>
                                                <td><?= date('d-M-Y, h:i sa', $user->created_at) ?></td>
                                                <td><?= $user->status == '1' ? 'Verified' : 'Not Verified' ?></td>
                                                <td><div class="btn-group">
                                                        <a href='javascript:void(0)' onclick="confirm_delete('<?= $user->id ?>');" class="fcbtn btn btn-danger btn-outline btn-1d">Delete</a>
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

        if (confirm('Are You sure you want to delete this User?')) {
            document.location.href = '<?= base_url() ?>admin/users/delete_user/' + id;
        }
    }
</script>