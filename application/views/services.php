<?php include 'includes/header.php';?>
<section class="inner-header">
	<div class="container">
		<div class="row">
			<div class="col-md-12 sec-title colored text-center">
				<h2>Services</h2>
				<ul class="breadcumb">
					<li><a href="<?= base_url()?>home">Home</a></li>
					<li><i class="fa fa-angle-right"></i></li>
					<li><span>Services</span></li>
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
	              <?php foreach($services as $service){ ?>
	              	<div class="row">
	                <div class="col-md-6 col-sm-6">
	                  <div class="thumb">
	                    <img class="full-width" src="<?= base_url() ?>uploads/services/<?= $service->image ?>" alt="">
	                  </div>
	                </div>
	               <div class="col-md-6 col-sm-6">
	                  <div class="causes-details">
	                    <h3><?= $service->title ?></h3>
	                    <?= $service->description ?>
	                  </div>
	                </div>
	              </div><hr>
	              <?php }?>
	              	              
	            </div>
	          </div>  
	        </div>
		</div>
	</section>
<?php include 'includes/footer.php';?>