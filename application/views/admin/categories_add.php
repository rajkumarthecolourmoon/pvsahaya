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
                        <h4 class="page-title">Add Category</h4> </div>
                    <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12"> 
                        <ol class="breadcrumb">
                            <!-- <li><a href="javascript:history.go(-1);"><button style="float: right" type="submit" class="btn btn-success waves-effect waves-light m-r-10">Back</button></a></li> -->
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
                                        <div class="col-md-12 ">
                                            <div class="row">
                                                <div class="col-sm-12 col-xs-12">
                                                <form id="form" action="<?php echo base_url(); ?>admin/cms/categories_add" method="POST" enctype='multipart/form-data' class="form-material">
                                                        <div class="form-group">
                                                            <label for="name">Category</label>
                                                            <input type="text" name="category" class="form-control"  id="category" placeholder="Title" > </div>
                                                      <div class="form-group">
                                                            <label for="exampleInputEmail1">Title</label>
                                                            <input type="text" id="title"  name="title" class="form-control"> </div>
                                                        <div class="form-group">
                                                            <label for="exampleInputEmail1">Image</label>
                                                            <input type="file" id="image" name="image" class="form-control"> 
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="name">Description</label>
                                                            <textarea id="description" name="description" class="ckeditor" ></textarea>  
                                                        </div>  

                                                        <button type="submit" class="btn btn-success waves-effect waves-light m-r-10">Add</button>
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
 <script type="text/javascript" src="//cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.13.1/jquery.validate.js"></script>

<script type="text/javascript">


    $(document).ready(function(){
        $("#form").validate({  
           
             rules: {
                 category:{
                     required: true,
                 }, 
                 title:{
                     required: true,
                 },
                 image:{
                     required: true,
                     
                 },
                 description:{
                     required: true,
                 }, 
            },
            messages: {
                category:{
                    required: "Select services",
                },
                title:{
                    required: "Select title",
                },
                image:{
                    required: "Select image ",
                    accept: "Only image type jpg/png/jpeg/gif is allowed"
                },
                description:{
                    required: "Select description",
                }

            }  
           
          });
});
</script>