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
                if ($msg!='') {
                    ?>
                    <div class="alert alert-success animated bounceIn" role="alert">
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <i class='fa fa-check-circle'></i>  <?= $msg; ?>
                    </div>
                <?php } ?>
                <div class="row bg-title">

                    <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
                        <h4 class="page-title">Categories</h4> </div>
                    <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
                        <ol class="breadcrumb">
                            <li><a href="#">Dashboard</a></li>
                            <li><a href="#">Lead Types</a></li>
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
                                    <h3 class="box-title m-b-0">Manage Lead Types</h3>
                                </div>
                                <div class="col-md-6">
                                    <div class="pull-right" style="margin-bottom: 10px;">
<!--                                        <a href="<?= base_url() ?>admin/categories/add_category"><button type="button" class="fcbtn btn btn-success btn-outline btn-1d"><i class="fa fa-plus"></i> Add </button></a>-->
                                    </div></div></div>
                            <div class="table-responsive">
                                <table id="data___tabel" class="display nowrap" cellspacing="0" width="100%">
                                    <thead>
                                        <tr>
                                            <th>S.No</th>
                                            <th>Lead Type</th>
                                            <th>Priority</th>
                                            <th>Created At</th>
                                            <th>Action</th> 
                                        </tr>
                                    </thead>
                                    <tfoot>
                                    </tfoot>
                                    <tbody>
                                        <?php
                                        $i = 1;
                                        foreach ($categories as $category) {
                                            ?>
                                            <tr>
                                                <td><?= $i; ?></td>
                                                <td><?= $category->type ?></td>
                                                <td><?= $category->priority ?></td>
                                                <td><?=date('d-m-Y: h:i a',$category->updated_at)?></td>
                                                <td><div class="btn-group">
                                                        <a href='<?= base_url()?>admin/categories/edit_category/<?=$category->id?>' class="fcbtn btn btn-success btn-outline btn-1d">Edit</a>
    <!--                                                        <a href='javascript:void(0)' onclick="confirm_delete('<?=$category->id?>');" class="fcbtn btn btn-danger btn-outline btn-1d">Delete</a>-->
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
    function confirm_delete(id){
       
       if(confirm('Are You sure you want to delete this category?( Note:The Subcategories under this category will also be Deleted ! )')){
           document.location.href='<?= base_url()?>admin/categories/delete_category/'+id;
       }
    }
</script>