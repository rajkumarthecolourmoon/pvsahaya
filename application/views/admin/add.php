<?php 
include 'includes/logged_in_header.php';
?>
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
                        <h4 class="page-title">Add</h4> </div>
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
                    
                    <!-- 
                            <div class="alert alert-success animated bounceIn"> Lorem ipsum dolor sit amet, consectetur adipisicing elit. </div>
                       
                            <div class="alert alert-danger animated bounceIn"> Lorem ipsum dolor sit amet, consectetur adipisicing elit. </div> -->
                    
                   
                </div>
                    <div class="col-sm-12">
                          <div class="row">
                          <div class="col-md-12">
                        <div class="white-box">
                        

                            <div class="row">
                                <div class="col-md-6 ">
                                      <div class="row">
                                <div class="col-sm-12 col-xs-12">
                                    <form>
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">User Name</label>
                                            <input type="text" class="form-control" id="exampleInputEmail1" placeholder="Enter Username"> </div>
                                            <div class="form-group">
                                            <label for="exampleInputEmail1">Image</label>
                                            <input type="File" class="form-control" id="exampleInputEmail1" placeholder="Enter Username"> </div>
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Email address</label>
                                            <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Enter email"> </div>
                                        <div class="form-group">
                                            <label for="exampleInputPassword1">Password</label>
                                            <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password"> </div>
                                        <div class="form-group">
                                            <label for="exampleInputPassword1">Password</label>
                                            <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Confirm Password"> </div>
                                      
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
            <?php 
include 'includes/footer.php';
?>
          <!--   <footer class="footer text-center"> 2016 &copy; Elite Admin brought to you by themedesigner.in </footer> -->
        </div>
        <!-- /#page-wrapper -->
    </div>

</body>

</html>
