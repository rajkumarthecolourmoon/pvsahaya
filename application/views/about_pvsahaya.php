<?php include 'includes/header.php';?>
<section class="inner-header">
	<div class="container">
		<div class="row">
			<div class="col-md-12 sec-title colored text-center">
				<h2>About Trust</h2>
				<ul class="breadcumb">
					<li><a href="<?= base_url() ?>about_swwecha">About Us</a></li>
					<li><i class="fa fa-angle-right"></i></li>
					<li><span>About Trust</span></li>
				</ul>
				<span class="decor"><span class="inner"></span></span>
			</div>
		</div>
	</div>
</section>

<section class="sec-padding about-content full-sec">
	<div class="container">
		<div class="row">
			<div class="col-md-7">
				<div class="full-sec-content">
					<div class="sec-title style-two">
						<h2>About PV Sahaya</h2>
						<span class="decor">
							<span class="inner"></span>
						</span>
					</div>
					<!-- about_pvsahaya<h3><?= $about->title ?></h3> -->
					<?= $about->description ?>
				</div>
			</div>
			<div class="col-md-5">
				<img class="full-width" src="<?= base_url() ?>uploads/about/<?= $about->image ?>" alt=""/>
			</div>
		</div>
	</div>
</section>
<?php include 'includes/footer.php';?>