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
                        <h4 class="page-title">Edit-City</h4> </div>
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
                                                    <form action="<?php echo base_url(); ?>admin/categories/update_city/<?= $this->uri->segment(4) ?>" method="POST" enctype='multipart/form-data' class="">
                                                        <div class="form-group">
                                                            <label for="name">City Name</label>
                                                            <input type="text" name="name" class="form-control" id="name" placeholder="Title" value="<?php echo $city->name; ?>"> </div>
                                                        <div class="form-group">
                                                            <label for="name">State Name</label>
                                                            <select class="form-control" name="state_id">
                                                                <option value="">--Select A State--</option>
                                                                <?php foreach ($states as $state) { ?>
                                                                    <option value="<?= $state->id ?>" <?php
                                                                    if ($state->id == $city->state_id) {
                                                                        echo "selected";
                                                                    }
                                                                    ?>><?= $state->name ?></option>
                                                                        <?php } ?>
                                                            </select>
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="name">Major City</label>
                                                            <select class="form-control" name="major_city">
                                                                <option value="yes" <?= $city->major_city == 'yes' ? 'selected' : '' ?>>Yes</option>
                                                                <option value="no" <?= $city->major_city == 'no' ? 'selected' : '' ?>>No</option>
                                                            </select>
                                                        </div>
                                                        <div class="form-group well">
                                                            <label for="name" class="h4">Enter Price for Each Lead Priority:</label>
                                                            <?php
                                                            $i = 0;
                                                            foreach ($lead_types as $lead_type) {
                                                                ?>
                                                                <div class="h5"><i><u><?= $lead_type->type ?></u></i>:</div>
                                                                <input type="hidden" name="lead_type_id[]" value="<?= $lead_type->id ?>">
                                                                <div class="row">

                                                                    <div class="col-md-3">
                                                                        <label >1<sup>st Slot</sup></label>
                                                                        <input type="text" class="form-control" name="price[<?= $lead_type->id ?>][]" value="<?= $lead_type->prices[0]->price ?>"> 
                                                                    </div>
                                                                    <div class="col-md-3">
                                                                        <label >2<sup>nd Slot</sup></label>
                                                                        <input type="text" class="form-control" name="price[<?= $lead_type->id ?>][]" value="<?= $lead_type->prices[1]->price ?>"> 
                                                                    </div>
                                                                    <div class="col-md-3">
                                                                        <label >3<sup>rd Slot</sup></label>
                                                                        <input type="text" class="form-control" name="price[<?= $lead_type->id ?>][]" value="<?= $lead_type->prices[2]->price ?>"> 
                                                                    </div>
                                                                    <div class="col-md-3">
                                                                        <label >4-12 <sup>Slots</sup></label>
                                                                        <input type="text" class="form-control" name="price[<?= $lead_type->id ?>][]" value="<?= $lead_type->prices[3]->price ?>"> 
                                                                    </div>

                                                                </div>
                                                                <?php
                                                                $i++;
                                                            }
                                                            ?>
                                                        </div>

                                                        <div class="row">
                                                            <div class="col-md-12">
                                                                <button type="submit" class="btn btn-success waves-effect waves-light m-r-10" style="margin-top: 15px;">Update</button>
                                                                <!--   <button type="submit" class="btn btn-inverse waves-effect waves-light">Cancel</button> -->
                                                            </div>
                                                        </div>
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
    <style type="text/css">
        .cbhorz{
            float:left;
            margin: -7px 5px 5px 5px;
            padding-top: 14px;

        }
    </style>
</body>
