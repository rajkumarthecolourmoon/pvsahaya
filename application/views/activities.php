<?php include 'includes/header.php';?>
<section class="inner-header">
	<div class="container">
		<div class="row">
			<div class="col-md-12 sec-title colored text-center">
				<h2>Activities</h2>
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
	          <div class="col-sm-12">
	            <div class="featured-causes mb_20 pr_15">
	              <?php foreach($activities as $activitie){?> 
	              	<div class="row">
	                <div class="col-md-4 col-sm-4">
	                  <div class="thumb">
	                    <img class="full-width" src="<?= base_url() ?>uploads/activities/<?= $activitie->image ?>" alt="">
	                  </div>
	                </div>
	                <div class="col-md-8 col-sm-8">
	                  <div class="causes-details">
	                    <h3><?= $activitie->title ?></h3>
	                    <p><i class="fa fa-calendar"></i> <?= date('d M Y',$activitie->created_at);?></p>
	                    <?= substr($activitie->description,0,359); ?>
	                    <a class="thm-btn btn-xs" href='<?= base_url() ?>activities_view/<?= $activitie->plink ?>'>Read More</a>
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
	          	<p><?php echo $links;?></p>
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
	            </div> -->
	          </div>
		</div>
	</section>
<?php include 'includes/footer.php';?>