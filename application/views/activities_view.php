<?php include 'includes/header.php';?>
<section class="inner-header">
	<div class="container">
		<div class="row">
			<div class="col-md-12 sec-title colored text-center">
				<h2>Activity Title</h2>
				<ul class="breadcumb">
					<li><a href="<?= base_url() ?>home">Home</a></li>
					<li><i class="fa fa-angle-right"></i></li>
					<li><span>Activities</span></li>
				</ul>
				<span class="decor"><span class="inner"></span></span>
			</div>
		</div>
	</div>
</section>

<section class="event-feature sec-padding bg-color-fa pb_60">
		<div class="container">
			<div class="row event-inner">
				<div class="row">
					<div class="col-md-10 col-md-offset-1 featured-causes">
						<img class="full-width" src="<?= base_url()?>uploads/activities/<?= $activities->image ?>" alt="">
						<hr>
						<div class="causes-details">
	                    <h3><?= $activities->title ?></h3>
	                    <?= $activities->description ?>
	                  </div>
					</div>
				</div>
	          <div class="col-sm-12">
	            <div class="featured-causes mb_20 pr_15">
	              <div class="row">
	                <div class="col-md-5 col-sm-6">
	                  <div class="thumb">
	                    
	                  </div>
	                </div>
	                <div class="col-md-7 col-sm-6">
	                  
	                </div>
	              </div>
	            </div>
	          </div>  
	        </div>
	           
		</div>
	</section>
<?php include 'includes/footer.php';?>