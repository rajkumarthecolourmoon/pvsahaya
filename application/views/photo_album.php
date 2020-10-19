<?php include 'includes/header.php';?>
<section class="inner-header">
	<div class="container">
		<div class="row">
			<div class="col-md-12 sec-title colored text-center">
				<h2>Photo Album</h2>
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

<section class="event-feature sec-padding bg-color-fa pb_60">
		<div class="container">
			<div class="row event-inner">
	          <div class="col-sm-12">
	            <div class="featured-causes mb_20 pr_15">
	              	<div class="row">
	              		 <?php foreach($photo_albums as $photo_album){?>
	                <div class="col-md-3 col-sm-4 album" align="center">
	                 	<a href="<?= base_url() ?>photo_gallery/<?= $photo_album->p_link?>">
	                 		 <img src="<?= base_url() ?>assets/images/folder.png" alt="" width="180" height="180">
	                  		<h4><?= $photo_album->title ?></h4>
	                 	</a>
	                </div>
	                 <?php }?>
	              </div>
	            </div>
	          </div>  
	        </div>
	           <div class="col-sm-12">
	          	<!--Pagination-->
	          	<p><?php  echo $links;?></p>
	         <!--   <div class="pager-outer clearfix mt_30 mb_0">
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