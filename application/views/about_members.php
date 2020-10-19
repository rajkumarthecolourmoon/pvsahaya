<?php include 'includes/header.php';?>
<section class="inner-header">
	<div class="container">
		<div class="row">
			<div class="col-md-12 sec-title colored text-center">
				<h2>Members</h2>
				<ul class="breadcumb">
					<li><a href="<?= base_url() ?>about_swwecha">About Us</a></li>
					<li><i class="fa fa-angle-right"></i></li>
					<li><span>Members</span></li>
				</ul>
				<span class="decor"><span class="inner"></span></span>
			</div>
		</div>
	</div>
</section>

<section class="sec-padding pb_30">
		<div class="container">
			<div class="row">				
				<?php $i=1; foreach($about_members as $committees){					
					if($i<9){?>                         
 					<div class="col-md-3 col-sm-4">
					<div class="single-team-member mb_60 commi">
						<div class="img-box">
							<img class="full-width" src="<?= base_url() ?>uploads/committee/<?= $committees->image ?>" alt="">
							<div class="overlay">
								<div class="box">
									<div class="content">
										<ul>
											<li><a href="<?= $committees->facebook ?>"><i class="fa fa-facebook"></i></a></li>
											<li><a href="<?= $committees->mail ?>"><i class="fa fa-envelope"></i></a></li>
										</ul>
									</div>
								</div>
							</div>
						</div>
						<h3><?= $committees->name ?></h3>
						<span><?= $committees->designation ?></span>
					</div>
				</div>
				<?php }$i++; }?>
			</div>
		</div>
	</section>
<?php include 'includes/footer.php';?>