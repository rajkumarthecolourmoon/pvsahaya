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
                        <h4 class="page-title">Add-Product Image</h4> </div>
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
                                        <div class="col-md-12">
                                            <div class="row">
                                                <div class="col-sm-12 col-xs-12">
                                                    <form id="upload_form" method="POST" enctype='multipart/form-data' class="form-material">
                                                        <div class="form-group">
                                                            <label for="name">Choose Images(Multiple Images can be selected)</label>
                                                            <input type="file" name="documents[]" class="form-control file_input" id="image" placeholder="Title" multiple="multiple">
                                                            <button type="submit" class="btn btn-success waves-effect waves-light m-r-10 trigger_event pull-left">Add</button>
                                                        </div>

                                                        <input type="hidden" class="productid" name="productid" value="<?= $this->uri->segment(4) ?>">

                                                        <div class="spinner"><h3>Loading...</h3></div>

                                                        <div class="append_images row">
                                                            <?php foreach ($results as $result) { ?>
                                                                <div class='col-md-3'><div class='pic' style='background:url(<?= base_url() ?>/uploads/product_images/<?= $result->image ?>'><a data-id='<?= $result->id ?>' href='javascript:void(0);' class='delete_icon'>x</a></div></div>
                                                            <?php } ?>
                                                        </div>



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
<style>
    .pic{
        min-height: 200px;
        background-size: cover !important;
        background-repeat: no-repeat!important;
        background-position: center !important;
        margin-bottom: 15px;
        position: relative;
    }
    .pic a{
        position: absolute;
        right: 10px;
        top: 10px;
        display: block;
        height: 30px;
        line-height: 30px;
        width: 30px;
        background: #09f;
        color: #fff;
        text-align: center;
        border-radius: 100%;

    }
</style>
<script>
    $(".spinner").hide();
    $('#upload_form').on('submit', function (e) {
        e.preventDefault();
        $('.append_images').hide();
        $(".spinner").show();
        $.ajax({
            type: "POST",
            url: "<?= base_url() ?>admin/products/insert_image",
            data: new FormData(this),
            contentType: false, // The content type used when sending data to the server.
            cache: false, // To unable request pages to be cached
            processData: false,
            success: function (data)
            {
                //alert(data);
                $('.append_images').html(data);
                $(".spinner").hide();
                $('.append_images').show();
                $('.file_input').val('');
                
            }
        });
    });

    $(document).on('click', '.delete_icon', function () {
        $('.append_images').hide();
        $(".spinner").show();
        var id = $(this).data('id');
        var pid = $('.productid').val();
        $.ajax({
            type: "POST",
            url: "<?= base_url() ?>admin/products/delete_image",
            data: {id: id, pid: pid},
            success: function (data)
            {
                //alert(data);
                $('.append_images').html(data);
                $(".spinner").hide();
                $('.append_images').show();
                $('.file_input').val('');
                
            }
        });


    });



</script>