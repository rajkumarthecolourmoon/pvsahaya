<?php include 'includes/header.php';?>
<section class="inner-header">
	<div class="container">
		<div class="row">
			<div class="col-md-12 sec-title colored text-center">
				<h2>Achievements</h2>
				<ul class="breadcumb">
					<li><a href="<?= base_url() ?>home">Home</a></li>
					<li><i class="fa fa-angle-right"></i></li>
					<li><span>Achievements</span></li>
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
	              <?php 
	              	foreach($achievements as $achievement){
	              		?>
	              	<div class="row">
	                <div class="col-md-4 col-sm-5">
	                  <div class="thumb">
	                    <img class="full-width" src="<?= base_url() ?>uploads/achievements/<?= $achievement->image ?>" alt="">
	                  </div>
	                </div>
	                <div class="col-md-8 col-sm-7">
	                  <div class="causes-details">
	                    <h3><?= $achievement->title ?></h3>
	                    <?= $achievement->description ?>
	                  </div>
	                </div>
	              </div>
	              <hr>
	              <?php }?>
	            </div>
	          </div>  
	        </div>
		</div>
	</section>
<?php include 'includes/footer.php';?>