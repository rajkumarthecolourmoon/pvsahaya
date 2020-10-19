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
                    <?php if(isset($honorable)){?>
                    <h4 class="page-title">Update Honorable Council</h4>
                  <?php  }else{?>
                        <h4 class="page-title">Add Honorable Council</h4>
                        <?php }?>
                         </div>                   
                    
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
                                        <div class="col-md-12 ">
                                            <div class="row">
                                                <div class="col-sm-12 col-xs-12">
                                                    <form action="<?php echo base_url(); ?>admin/cms/insert_honorable_council/<?php echo $this->uri->segment(4);?>" method="POST" enctype='multipart/form-data' class="form-material">

                                                        <div class="form-group">
                                                            <label for="name">Name</label>
                                                            <input type="text" name="name" value="<?= $honorable->name;?>"class="form-control"> 
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="name">Designation</label>
                                                            <input type="text" name="designation" value="<?php echo $honorable->designation;?>" class="form-control"> 
                                                        </div>
                     <div class="row">                                   
                    <div class="col-lg-5">                                
                    <div class="form-group">
                        <select class="form-control" id="country" name="country">
                            <option>Select Country</option>
                            <?php foreach($countries as $countrie){?>
                            <option value="<?= $countrie->id ?>" <?= ($countrie->id ==$honorable->country_id) ? 'selected':'' ?> ><?= $countrie->name;?></option>
                            <?php }?>                           
                        </select>
                    </div>
                    </div>                
                <div class="col-lg-5">
                    <div class="form-group">
                        <select class="form-control" id="state" name="state">
                            <option>Select State</option>
                            <?php if($this->uri->segment(4) !=''){
                             foreach($states as $state){?>
                            <option value="<?= $state->id ?>" <?= ($state->id ==$honorable->state_id) ? 'selected':'' ?> ><?= $state->name;?></option>
                            <?php } 
                                } ?>                           
                            </select>
                    </div>
                </div>
                </div>                              <?php if(isset($honorable)){?>
                                                     <div class="form-group">
                                                            <label for="name">Previous Honorable Council</label>
                                                            <img src="<?= base_url();?>uploads/honorable/<?= $honorable->image;?>" width="120px" hight="120px"> 
                                                        </div>  <?php }?>                                     

                                                        <div class="form-group">
                                                            <label for="name">Honorable Council</label>
                                                            <input type="file" name="honorable" class="form-control"> 
                                                        </div>
                                                        <div>
                                                            <p id="intimate" style="color:red">Image should be equal to  (Natural: 270 × 300 pixels)</p>
                                                        </div>
                                                        <?php if(isset($honorable)){?>
                                                        <div class="row">
                                                            <div class="col-md-12">
                                                                <button type="submit" class="btn btn-success waves-effect waves-light m-r-10" style="margin-top: 15px;">update</button>
                                                            </div>

                                                        </div><?php }else{?>
                                                        <div class="row">
                                                            <div class="col-md-12">
                                                                <button type="submit" class="btn btn-success waves-effect waves-light m-r-10" style="margin-top: 15px;">Add</button>
                                                            </div>
                                                            
                                                        </div><?php }?>
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
$('#country').on('change', function () {
       var id = $(this).val();
       $.ajax({
           type: "POST",
           url: "<?php echo base_url()?>home/get_states",
           data: {
               id: id
           },
           async: false,
           success: function (response) {
               $('#state').html(response);
           },
           error: function () {
               alert('Error occured');
           }
       });
   });
</script>


