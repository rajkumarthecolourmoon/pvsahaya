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
                        <h4 class="page-title">Edit Listing Prices</h4> </div>
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
                                                    <form action="<?php echo base_url(); ?>admin/pricing/update_slot_price/<?= $this->uri->segment(4) ?>" method="POST" enctype='multipart/form-data' class="form-material">
                                                        <div class="form-group">
                                                            <label for="name">Select Lead Prority:</label>
                                                            <div class="radio radio-success">
                                                                <input type="radio" disabled name="lead_priority" id="1" value="1" <?php
                                                                if ($slot_price->lead_priority == '1') {
                                                                    echo 'checked';
                                                                }
                                                                ?> >
                                                                <label for="1"> 1<sup>ST</sup> </label>
                                                            </div>
                                                            <div class="radio radio-success">
                                                                <input type="radio" disabled name="lead_priority" id="2" value="2" <?php
                                                                if ($slot_price->lead_priority == '2') {
                                                                    echo 'checked';
                                                                }
                                                                ?>>
                                                                <label for="1"> 2<sup>ND</sup> </label>
                                                            </div>
                                                            <div class="radio radio-success">
                                                                <input type="radio" disabled name="lead_priority" id="3" value="3" <?php
                                                                if ($slot_price->lead_priority == '3') {
                                                                    echo 'checked';
                                                                }
                                                                ?>>
                                                                <label for="3"> 3<sup>RD</sup> </label>
                                                            </div>
                                                            <div class="radio radio-success">
                                                                <input type="radio" disabled name="lead_priority" id="4" value="4" <?php
                                                                if ($slot_price->lead_priority == '4') {
                                                                    echo 'checked';
                                                                }
                                                                ?>>
                                                                <label for="4"> 4-12<sup></sup> </label>
                                                            </div>
                                                            <div class="form-group">
                                                                <label for="name">Select State</label>
                                                                <select disabled class="form-control state" name="state_id" onchange="getCities();">
                                                                    <option value="">--Select A State--</option>
                                                                    <?php foreach ($states as $state) { ?>
                                                                        <option value="<?= $state->id ?>" <?php
                                                                        if ($slot_price->state_id == $state->id) {
                                                                            echo 'selected';
                                                                        }
                                                                        ?>><?= $state->name ?></option>
                                                                            <?php } ?>
                                                                </select>
                                                            </div>
                                                            <div class="form-group">
                                                                <label for="name">Select City</label>
                                                                <select disabled class="form-control cities" name="city_id" onchange="getLocations();">
                                                                    <option value="">--Select--</option>
                                                                    <?php foreach ($cities as $city) { ?>
                                                                        <option value="<?= $city->id ?>" <?= $city->id == $slot_price->city_id ? 'selected' : '' ?>><?= $city->name ?></option>
                                                                    <?php } ?>
                                                                </select>
                                                            </div>
                                                            <div class="form-group">
                                                                <label for="name">Select Location</label>
                                                                <select disabled class="form-control locations" name="location_id">
                                                                    <option value="">--Select--</option>
                                                                    <?php foreach ($locations as $location) { ?>
                                                                        <option value="<?= $location->id ?>" <?= $location->id == $slot_price->location_id ? 'selected' : '' ?>><?= $location->name ?></option>
                                                                    <?php } ?>
                                                                </select>
                                                            </div>

                                                            <div class="form-group">
                                                                <label for="exampleInputEmail1">Price</label>
                                                                <input type="number"  name="price" class="form-control" value="<?= $slot_price->price ?>" autofocus> </div>


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
<script>
    function getCities() {
        var state_id = $('.state').val();
        $.ajax({
            type: "POST",
            url: "<?php echo base_url(); ?>admin/ajax/index",
            data: {
                state_id: state_id
            },
            async: false,
            success: function (response) {
                $('.cities').html(response);
            },
            error: function () {
                alert('Error occured');
            }
        });
    }
    function getLocations() {
        var city_id = $('.cities').val();
        $.ajax({
            type: "POST",
            url: "<?php echo base_url(); ?>admin/ajax/get_locations",
            data: {
                city_id: city_id
            },
            async: false,
            success: function (response) {
                $('.locations').html(response);
            },
            error: function () {
                alert('Error occured');
            }
        });
    }
</script>
