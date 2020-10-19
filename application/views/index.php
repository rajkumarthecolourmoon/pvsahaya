<?php include 'includes/header.php';?>
<div class="loader">
        <div class="loader-inner"></div>
        <div class="loader-inner"></div>
        <div class="loader-inner"></div>
        <div class="loader-inner"></div>
        <div class="loader-inner"></div>
        <div class="loader-inner"></div>
        <div class="loader-inner"></div>
        <div class="loader-inner"></div>
        <div class="loader-inner"></div>
    </div>
	<section class="rev_slider_wrapper">
		<div id="slider1" class="rev_slider"  data-version="5.0">
			<ul>
			<?php foreach ($sliders as $slider){?>		
				<li data-transition="parallaxvertical">
					<img src="<?= base_url() ?>uploads/slider/<?= $slider->slider ?>"  alt="" width="1920" height="500" data-bgposition="top center" data-bgfit="cover" data-bgrepeat="no-repeat" data-bgparallax="0" >
					<div class="tp-caption sfl tp-resizeme thm-banner-h1 blue-bg" 
				        data-x="left" data-hoffset="0" 
				        data-y="top" data-voffset="160" 
				        data-whitespace="nowrap"
				        data-transform_idle="o:1;" 
				        data-transform_in="o:0" 
				        data-transform_out="o:0" 
				        data-start="500">
						<?= $slider->title ?>
				    </div>
					<div class="tp-caption sfr tp-resizeme thm-banner-h1 heavy black-bg" 
				        data-x="left" data-hoffset="0" 
				        data-y="top" data-voffset="220" 
				        data-whitespace="nowrap"
				        data-transform_idle="o:1;" 
				        data-transform_in="o:0" 
				        data-transform_out="o:0" 
				        data-start="1000">
						<?= $slider->sub_title ?>
				    </div>
				</li>
				<?php }?>	
			</ul>
		</div>
	</section>
	<section class="sec-padding home-serivce" style="padding-bottom: 30px;">
		<div class="container">
			<div class="sec-title text-center">
				<h2>Our Services</h2>
				<span class="decor"><span class="inner"></span></span>
			</div>
			<div class="row single-service-style causes-style2">
				<div class="col-lg-3 col-md-6 col-sm-6">
					<div class="single-service-home">
						<div class="content">
							<img src="assets/images/open-book.png" alt="">
							<h3><?= $services[0]->title ?></h3>
							<?= substr($services[0]->description,0,90);?>
							<a href="<?= base_url()?>services" class="thm-btn btn-xs">Read More</a>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-6 col-sm-6">
					<div class="single-service-home">
						<div class="content">
							<img src="assets/images/study.png" alt="">
							<h3><?= $services[1]->title ?></h3>
							<?= substr($services[0]->description,0,90);?>
							<a href="<?= base_url()?>services" class="thm-btn btn-xs">Read More</a>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-6 col-sm-6">
					<div class="single-service-home">
						<div class="content">
							<img src="assets/images/humanitarian.png" alt="">
							<h3><?= $services[2]->title ?></h3>
							<?= substr($services[0]->description,0,90);?>
							<a href="<?= base_url()?>services" class="thm-btn btn-xs">Read More</a>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-6 col-sm-6">
					<div class="single-service-home">
						<div class="content">
							<img src="assets/images/health.png" alt="">
							<h3><?= $services[3]->title ?></h3>
							<?= substr($services[0]->description,0,90);?>
							<a href="<?= base_url()?>services" class="thm-btn btn-xs">Read More</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<section class="sec-padding about-content full-sec">
		<div class="container">
			<div class="row">
				<div class="col-md-5">
					<img class="full-width" src="<?= base_url() ?>uploads/about/<?= $about_pvsahaya->image ?>" alt=""/>
				</div>
				<div class="col-md-7">
					<div class="full-sec-content mb-md-30">
						<div class="sec-title style-two">
							<h2>about us</h2>
							<span class="decor">
								<span class="inner"></span>
							</span>
						</div>
						<h3><?= substr($about_pvsahaya->title,0,50); ?></h3>
						<br>
						<?= substr($about_pvsahaya->description,0,480); ?>
					</div>
				</div>
			</div>
		</div>
	</section>
	<section class="sec-padding meet-Volunteer" style="margin-top:20px">
		<div class="container">
			<div class="row">
				<div class="col-xs-10">
					<div class="sec-title text-left">
						<h2 class="text-white">Activities</h2>
						<span class="decor"><span class="inner"></span></span>
					</div>
				</div>
			</div>
			<div class="clearfix">
				<div class="team-carousel owl-carousel owl-theme">
				<?php foreach($activities as $activitie){?>
					<div class="item">
						<div class="single-team-member">
							<div class="img-box"><img src="<?= base_url() ?>uploads/activities/<?= $activitie->image ?>" alt="" hight="150" width="150"></div>
							<h3><?= $activitie->title ?></h3>															
						</div>
					</div>	
					<?php }?>			
				</div>
			</div>
		</div>
	</section>
    <section class="gallery-section full-width pb_2">
    	<div class="auto-container">

			<div class="sec-title text-center">
				<h2>Our Gallery</h2>
				<span class="decor"><span class="inner"></span></span>
			</div>
            
            <!--Filter-->
            <!-- <div class="filters" style="display:none;">
            	<ul class="filter-tabs style-one clearfix anim-3-all">
                    <li class="filter" data-role="button" data-filter="all">All</li>
                    <li class="filter" data-role="button" data-filter=".child">Child</li>
                    <li class="filter" data-role="button" data-filter=".charity">Charity</li>
                    <li class="filter" data-role="button" data-filter=".sponsorship">Sponsorship</li>
                    <li class="filter" data-role="button" data-filter=".volunteering">Volunteering</li>
                </ul>
            </div> -->
            
        </div>
        
        <div class="images-container">
            <div class="filter-list clearfix">
                
                <!--Image Box-->
                <?php 
                $i=1;
                foreach($photos as $photo){
                	if($i < 9){?>
                <div class="image-box mix mix_all charity sponsorship volunteering">
                    <div class="inner-box">
                        <figure class="image">
                        	<a href="<?= base_url() ?>uploads/gallery/<?= $photo->image ?>" class="lightbox-image">
                        		<img src="<?= base_url() ?>uploads/gallery/<?= $photo->image ?>" alt=""></a>
                        </figure>
                        <a href="<?= base_url() ?>uploads/gallery/<?= $photo->image ?>" class="lightbox-image btn-zoom" title="<?= $photo->title ?>">
                        	<span class="icon fa fa-dot-circle-o"></span>
                        </a>
                    </div>
                </div>
                <?php }$i++;}?>
                </div>
        </div>
    </section>
<?php include 'includes/footer.php';?>