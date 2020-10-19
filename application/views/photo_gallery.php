<?php include 'includes/header.php';?>
<section class="inner-header">
	<div class="container">
		<div class="row">
			<div class="col-md-12 sec-title colored text-center">
				<h2>Photo Gallery</h2>
				<ul class="breadcumb">
					<li><a href="<?= base_url() ?>photo_gallery">Gallery</a></li>
					<li><i class="fa fa-angle-right"></i></li>
					<li><span>Photos</span></li>
				</ul>
				<span class="decor"><span class="inner"></span></span>
			</div>
		</div>
	</div>
</section>

<section class="gallery-section pb_70">
		<div class="container">
        <div class="clearfix">       
	            <!--Image Box-->
	             <?php foreach($pfolders as $pfolder){?>
	            	<div class="image-box">
	                <div class="inner-box">
	                    <figure class="image"><a href="<?= base_url() ?>uploads/gallery/<?= $pfolder->image ?>" class="lightbox-image">
	                    	<img src="<?= base_url() ?>uploads/gallery/<?= $pfolder->image ?>" alt=""></a>
	                    </figure>
	                    <a href="<?= base_url() ?>uploads/gallery/<?= $pfolder->image ?>" class="lightbox-image btn-zoom" title="<?= $pfolder->title ?>">
	                    	<span class="icon fa fa-dot-circle-o"></span>
	                    </a>
	                </div>
	            </div>
	            <?php }?>

	        </div>
	       
	        <div class="col-sm-12">
	          	<!--Pagination-->
	          	<p><?php echo $links;?></p>
	           <!-- <div class="pager-outer clearfix mt_30 mb_0">
	                <ul class="pagination mb_0">
	                    <li><a href="#">Prev</a></li>
	                    <li class="active"><a href="#">1</a></li>
	                    <li><a href="#">2</a></li>
	                    <li><a href="#">3</a></li>
	                    <li><a href="#">-</a></li>
	                    <li><a href="#">4</a></li>
	                    <li><a href="#">5</a></li>
	                    <li><a href="#">Next</a></li>
	                </ul>
	            </div>-->
	          </div>
	    </div>
    </section>
<?php include 'includes/footer.php';?>