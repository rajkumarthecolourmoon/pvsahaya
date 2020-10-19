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
                        <h4 class="page-title">Add-Product</h4> </div>
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
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="white-box">
                                <h3 class="box-title m-b-0">Products</h3>
                                <p class="text-muted m-b-30 font-13"> Add-Products</p>
                                <div id="exampleValidator" class="wizard">
                                    <ul class="wizard-steps" role="tablist">
                                        <li class="active" role="tab">
                                            <h4><span><i class="ti-shopping-cart"></i></span>Enter Product Details</h4>
                                        </li>
                                        <li role="tab">
                                            <h4><span><i class="ti-filter"></i></span>Select Filters</h4>
                                        </li>
                                        <li role="tab">
                                            <h4><span><i class="ti-image"></i></span>Select Brand And Tags</h4>
                                        </li>
                                    </ul>

                                    <form id="validation"  class="form-horizontal" action="<?php echo base_url(); ?>admin/products/insert_product" method="POST" enctype='multipart/form-data'>
                                        <div class="wizard-content">
                                            <div class="wizard-pane active" role="tabpanel">
                                                <div class="form-group">
                                                    <label for="name">Select Category</label>
                                                    <select class="form-control mainCat" name="cid" onchange="getSub();">
                                                        <option value="">--Select A Category--</option>
                                                        <?php foreach ($categories as $category) { ?>
                                                            <option value="<?= $category->id ?>"><?= $category->name ?></option>
                                                        <?php } ?>
                                                    </select>
                                                </div>
                                                <div class="form-group">
                                                    <label for="name">Select SubCategory</label>
                                                    <select class="form-control subCat" name="sid" onchange="getsubsubcat();">
                                                        <option value="">--Select--</option>
                                                    </select>
                                                </div>
                                                <div class="form-group">
                                                    <label for="name">Select Sub-Sub Category</label>
                                                    <select class="form-control subsubcat" name="ssid" onchange="getfilters();">
                                                        <option value="">--Select--</option>
                                                    </select>
                                                </div>
                                                <div class="form-group">
                                                    <label for="name">Product Title</label>
                                                    <input type="text" name="name" class="form-control" id="name" placeholder="Title" value="<?php echo $profile->name; ?>"> 
                                                </div>
                                                <div class="form-group">
                                                    <label for="name">Offer</label>
                                                    <select class="form-control offer_selector" name="offer">
                                                        <option value="no">No</option>
                                                        <option value="yes">Yes</option>
                                                    </select>
                                                </div>
                                                <div class="form-group">
                                                    <label for="name">M.R.P Price</label>
                                                    <input type="number" name="mrp_price" class="form-control mrp_selector" id="name" placeholder="" value="<?php echo $profile->name; ?>"> 
                                                </div>
                                                <div class="form-group">
                                                    <label for="name">Sale Price</label>
                                                    <input type="number" name="sale_price" class="form-control sale_price_selector" id="name" placeholder="" value="<?php echo $profile->name; ?>" disabled="disabled" > 
                                                </div>
                                                <div class="form-group">
                                                    <label for="name">Select Vendor</label>
                                                    <select class="form-control" name="vendorid" onchange="getlat_lng();" id="vendor_id">
                                                        <option value="">--Select Vendor--</option>
                                                        <?php foreach ($vendors as $vendor) { ?>
                                                            <option value="<?= $vendor->id ?>"><?= $vendor->vendor_buisiness_name ?></option>
                                                        <?php } ?>
                                                    </select>
                                                </div>
                                                <div class="form-group">
                                                    <label for="exampleInputEmail1">Latitude</label>
                                                    <input type="text"  name="latitude" class="form-control latitude"  value="<?php echo $profile->priority; ?>"> 
                                                </div>
                                                <div class="form-group">
                                                    <label for="exampleInputEmail1">Longitude</label>
                                                    <input type="text"  name="longitude" class="form-control longitude"  value="<?php echo $profile->password; ?>"> 
                                                </div>
                                                <div class="form-group">
                                                    <label for="exampleInputEmail1">Availability</label>
                                                    <select class="form-control" name="availability">
                                                        <option value="">--Stock Availabilty--</option>
                                                        <option value="yes">Yes</option>
                                                        <option value="no">No</option>

                                                    </select>
                                                </div>
                                                <div class="form-group">
                                                    <label for="exampleInputEmail1">Short Description</label>
                                                    <textarea rows="5" cols="10" class="form-control" id="short_description" name="short_description"><?php echo $profile->meta_description; ?></textarea>
                                                </div>
                                                <div class="form-group">
                                                    <label for="exampleInputEmail1">Description</label>
                                                    <textarea rows="5" cols="10" class="ckeditor" id="description" name="description"><?php echo $profile->meta_description; ?></textarea>
                                                </div>

                                                <div class="form-group">    
                                                    <label for="exampleInputEmail1">Specification</label>
                                                    <textarea rows="5" cols="10" class="ckeditor" id="specification" name="specification"><?php echo $profile->meta_description; ?></textarea>
                                                </div>
                                                <div class="form-group">
                                                    <label for="exampleInputEmail1">Youtube Link</label>
                                                    <input type="text"  name="youtube_link" class="form-control"  value="<?php echo $profile->youtube_link; ?>"> 
                                                </div>
                                            </div>
                                            <div class="wizard-pane" role="tabpanel">

                                                <div class="append_filters"></div>

                                            </div>
                                            <div class="wizard-pane" role="tabpanel">
                                                <strong class="text-left">Select Brand</strong>
                                                <div class="form-group">
                                                    <?php foreach ($brands as $brand) { ?>
                                                        <div class="col-xs-5">
                                                            <div class="radio radio-success">
                                                                <input type="radio" name="brand_id" id="radio<?= $brand->id ?>" value="<?= $brand->id ?>">
                                                                <label for="radio<?= $brand->id ?>"> <?= $brand->name ?> </label>
                                                            </div>
                                                        </div>
                                                    <?php } ?>

                                                </div>
                                                <strong class="text-left">Select Tag</strong>
                                                <div class="form-group">
                                                    <div class="radio radio-success form-group cbhorz">
                                                        <?php
                                                        $i = 1;
                                                        foreach ($tags as $tag) {
                                                            ?>
                                                            <input id="checkbox<?= $i ?>" type="radio" name="tag_id" value="<?= $tag->id ?>">
                                                            <label for="checkbox<?= $i ?>"><?= $tag->name ?></label>
                                                            <?php
                                                            $i++;
                                                        }
                                                        ?>
                                                        <input id="checkbox" type="radio" name="tag_id" value="">
                                                        <label for="checkbox">None</label>
                                                    </div>
                                                </div>

                                                <div class="form-group">
                                                    <div class="checkbox checkbox-success form-group">

                                                        <input id="hot_deal" type="checkbox" name="tags" value="hot_deals">
                                                        <label for="hot_deal">List Product as Hot Deal</label>

                                                    </div>
                                                </div>

                                                <button id="mysubmit" type="submit" class="fcbtn btn btn-success btn-outline btn-1d" >Add Product</button>
                                            </div>
                                        </div>
                                    </form>
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
<script src="<?= ADMIN_ASSETS_PATH ?>assets/plugins/bower_components/jquery-wizard-master/dist/jquery-wizard.min.js"></script>
<script src="<?= ADMIN_ASSETS_PATH ?>assets/plugins/bower_components/jquery-wizard-master/libs/formvalidation/formValidation.min.js"></script>
<script src="<?= ADMIN_ASSETS_PATH ?>assets/plugins/bower_components/jquery-wizard-master/libs/formvalidation/bootstrap.min.js"></script>
<script>
                                                        function getSub() {
                                                            var cid = $('.mainCat').val();
                                                            $.ajax({
                                                                type: "POST",
                                                                url: "<?php echo base_url(); ?>admin/ajax",
                                                                data: {
                                                                    cid: cid
                                                                },
                                                                async: false,
                                                                success: function (response) {
                                                                    $('.subCat').html(response);
                                                                },
                                                                error: function () {
                                                                    alert('Error occured');
                                                                }
                                                            });
                                                        }
                                                        function getsubsubcat() {
                                                            var sid = $('.subCat').val();
                                                            var cid = $('.mainCat').val();
                                                            $.ajax({
                                                                type: "POST",
                                                                url: "<?php echo base_url(); ?>admin/ajax/get_sub_subcat_from_subcat",
                                                                data: {
                                                                    sid: sid,
                                                                    cid: cid
                                                                },
                                                                async: false,
                                                                success: function (response) {
                                                                    $('.subsubcat').html(response);
                                                                },
                                                                error: function () {
                                                                    alert('Error occured');
                                                                }
                                                            });
                                                        }
                                                        function getlat_lng() {
                                                            var vid = $('#vendor_id').val();
                                                            $.ajax({
                                                                type: "POST",
                                                                url: "<?php echo base_url(); ?>admin/ajax/get_latitude_longitude_from_vendor_id",
                                                                data: {
                                                                    vid: vid
                                                                },
                                                                async: false,
                                                                success: function (response) {
                                                                    $('.latitude').val(response[0].latitude);
                                                                    $('.longitude').val(response[0].longitude);
                                                                },
                                                                error: function () {
                                                                    alert('Error occured');
                                                                }
                                                            });
                                                        }
                                                        function getfilters() {
                                                            var ssid = $('.subsubcat').val();
                                                            var cid = $('.mainCat').val();
                                                            $.ajax({
                                                                type: "POST",
                                                                url: "<?php echo base_url(); ?>admin/ajax/get_filters_from_subsubcat",
                                                                data: {
                                                                    ssid: ssid,
                                                                    cid: cid
                                                                },
                                                                async: false,
                                                                success: function (response) {
                                                                    $('.append_filters').html(response);
                                                                    var resp = response;
                                                                    if (resp == '') {
                                                                        $('.append_filters').html('No Product Filters Defined for this Sub-Sub Category');
                                                                    }
                                                                },
                                                                error: function () {
                                                                    alert('Error occured');
                                                                }
                                                            });
                                                        }
                                                        function getfiltergroup() {
                                                            var ssid = $('.subsubcat').val();
                                                            var cid = $('.mainCat').val();
                                                            $.ajax({
                                                                type: "POST",
                                                                url: "<?php echo base_url(); ?>admin/ajax/get_filter_value_from_sub_subcat",
                                                                data: {
                                                                    ssid: ssid,
                                                                    cid: cid
                                                                },
                                                                async: false,
                                                                success: function (response) {
                                                                    $('.filgr').html(response);
                                                                },
                                                                error: function () {
                                                                    alert('Error occured');
                                                                }
                                                            });
                                                        }
                                                        function getfiltervalue() {
                                                            var ffid = $('.filgr').val();
                                                            $.ajax({
                                                                type: "POST",
                                                                url: "<?php echo base_url(); ?>admin/ajax/get_filter_value_from_filter_group",
                                                                data: {
                                                                    ffid: ffid
                                                                },
                                                                async: false,
                                                                success: function (response) {
                                                                    $('.filval').html(response);
                                                                },
                                                                error: function () {
                                                                    alert('Error occured');
                                                                }
                                                            });
                                                        }

                                                        $('.offer_selector').on('change', function () {
                                                            if ($(this).val() == 'yes') {
                                                                $('.sale_price_selector').removeAttr('disabled');
                                                            }
                                                            if ($(this).val() == 'no') {
                                                                $('.sale_price_selector').attr('disabled', true);
                                                            }
                                                        });
</script>
<script type="text/javascript">
    (function () {
        $('#exampleBasic').wizard({
            onFinish: function () {
                alert('finish');
            }
        });
        $('#exampleBasic2').wizard({
            onFinish: function () {
                alert('finish');
            }
        });
        $('#exampleValidator').wizard({
            onInit: function () {
                $('#validation').formValidation({
                    framework: 'bootstrap',
                    fields: {
                        cid: {
                            validators: {
                                notEmpty: {
                                    message: 'This is required'
                                }
                            }
                        },
                        sid: {
                            validators: {
                                notEmpty: {
                                    message: 'This is required'
                                }
                            }
                        },
                        name: {
                            validators: {
                                notEmpty: {
                                    message: 'This is required'
                                }
                            }
                        },
                        offer: {
                            validators: {
                                notEmpty: {
                                    message: 'This is required'
                                }
                            }
                        },
                        mrp_price: {
                            validators: {
                                notEmpty: {
                                    message: 'This is required'
                                }
                            }
                        },
                        sale_price: {
                            validators: {
                                notEmpty: {
                                    message: 'This is required'
                                }
                            }
                        },
                        vendorid: {
                            validators: {
                                notEmpty: {
                                    message: 'This is required'
                                }
                            }
                        },
                        availability: {
                            validators: {
                                notEmpty: {
                                    message: 'This is required'
                                }
                            }
                        },
                        short_description: {
                            validators: {
                                notEmpty: {
                                    message: 'This is required'
                                }
                            }
                        },
                        description: {
                            validators: {
                                notEmpty: {
                                    message: 'This is required'
                                }
                            }
                        },
                        specification: {
                            validators: {
                                notEmpty: {
                                    message: 'This is required'
                                }
                            }
                        },
                        brand_id: {
                            validators: {
                                notEmpty: {
                                    message: 'Please Select A Brand'
                                }
                            }
                        }

                    }
                });
            },
            validator: function () {
                var fv = $('#validation').data('formValidation');

                var $this = $(this);

                // Validate the container
                fv.validateContainer($this);

                var isValidStep = fv.isValidContainer($this);
                if (isValidStep === false || isValidStep === null) {
                    return false;
                }

                return true;
            },
            onFinish: function () {


            }
        });

        $('#accordion').wizard({
            step: '[data-toggle="collapse"]',

            buttonsAppendTo: '.panel-collapse',

            templates: {
                buttons: function () {
                    var options = this.options;
                    return '<div class="panel-footer"><ul class="pager">' +
                            '<li class="previous">' +
                            '<a href="#' + this.id + '" data-wizard="back" role="button">' + options.buttonLabels.back + '</a>' +
                            '</li>' +
                            '<li class="next">' +
                            '<a href="#' + this.id + '" data-wizard="next" role="button">' + options.buttonLabels.next + '</a>' +
                            '<a href="#' + this.id + '" data-wizard="finish" role="button">' + options.buttonLabels.finish + '</a>' +
                            '</li>' +
                            '</ul></div>';
                }
            },

            onBeforeShow: function (step) {
                step.$pane.collapse('show');
            },

            onBeforeHide: function (step) {
                step.$pane.collapse('hide');
            },

            onFinish: function () {
                alert('finish');
            }
        });
    })();
</script>   