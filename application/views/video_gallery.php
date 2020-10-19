<?php include 'includes/header.php';?>
<section class="inner-header">
	<div class="container">
		<div class="row">
			<div class="col-md-12 sec-title colored text-center">
				<h2>Video Gallery</h2>
				<ul class="breadcumb">
					<li><a href="<?= base_url() ?>video_gallery">Gallery</a></li>
					<li><i class="fa fa-angle-right"></i></li>
					<li><span>Videos</span></li>
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
	            <?php foreach($vedios as $vedio){
	            		//print_r($vedio);
	            	?>
	            	<div class="image-box">
	            		                <div class="inner-box">
	            		                    <figure class="image"><a class="fancybox-media" href="<?= $vedio->link ?>">
	            		                    	<img src="<?= base_url() ?>uploads/vedios/<?= $vedio->image ?>" alt=""></a>
	            		                    </figure>
	            		                   <a class="fancybox-media lightbox-image btn-zoom" href="<?= $vedio->link ?>">
	            		                    	<span class="icon fa fa-youtube-play"></span>
	            		                    </a>
	            		                </div>
	            		            </div>
	            <?php }?>
                                       <!--<div class="image-box">
	            		                  <div class="inner-box">
	            		                    <figure class="image">
	            		                <a class="fancybox-media" href="https://youtube.com/watch?v=JUedzMU_o70">
	            		                   <img src="http://localhost:8080/mynew/new/uploads/services/201808161511325700378_orphans_service111.jpg" alt="">
	            		                    	</a>
	            		                    </figure>
	            		                   <a class="fancybox-media lightbox-image btn-zoom" href="https://youtube.com/watch?v=JUedzMU_o70">
	            		                    	<span class="icon fa fa-youtube-play"></span>
	            		                    </a>
	            		                </div>-->
	            		            </div>

	        </div>
	        <div class="col-sm-12">
	        <p><?php echo $links; ?></p>
	          	<!--Pagination-->
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