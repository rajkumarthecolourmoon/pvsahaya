<?php include 'includes/header.php';?>
<section class="inner-header">
	<div class="container">
		<div class="row">
			<div class="col-md-12 sec-title colored text-center">
				<h2>Testimonials</h2>
				<ul class="breadcumb">
					<li><a href="<?= base_url() ?>home">Home</a></li>
					<li><i class="fa fa-angle-right"></i></li>
					<li><span>Testimonials</span></li>
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
	              <?php foreach($testimonials as $testimonial){?>
	              	<div class="row">
	                <div class="col-md-2 col-sm-3">
	                  <div class="thumb">
	                    <img class="full-width" src="<?= base_url() ?>/uploads/testimonials/<?= $testimonial->image?>" alt="">
	                  </div>
	                </div>
	                <div class="col-md-10 col-sm-9 testimonnial">
	                  <div class="causes-details">
	                    <?= $testimonial->description ?>
	                    <h5><?= $testimonial->title ?></h5>
	                  </div>
	                </div>
	              </div>
	              <hr>
	              <?php }?>
	            </div>
	          </div>  
	        </div>
	           <div class="col-sm-12">
	          	<!--Pagination-->
	          	<p><?php echo $links; ?></p>
	          <!--  <div class="pager-outer clearfix mt_30 mb_0">
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