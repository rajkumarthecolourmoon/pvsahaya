<!DOCTYPE html>
<html lang="en">
<head>
<base href="<?= base_url() ?>">
	<meta charset="UTF-8">
	<title>PV Sahaya</title>

	<link rel="icon" type="image/png" sizes="96x96" href="assets/img/favicon/favicon-96x96.png">
	<!-- responsive meta -->
	<meta name="viewport" content="width=device-width, initial-scale=1">	
	<meta name="keywords" content="">
	<meta name="description" content="">
	<!-- master stylesheet -->
	<link rel="stylesheet" href="assets/css/style.css">
	<!-- responsive stylesheet -->
	<link rel="stylesheet" href="assets/css/bootstrap-margin-padding.css">
	<link rel="stylesheet" href="assets/css/responsive.css">
</head>
<body class="page-wrapper">
	<?php $page = basename($_SERVER['SCRIPT_NAME']); ?>
	<section class="top-bar">
		<div class="container">

			<div class="left-text pull-left">
				<p><span>Support Us :</span> <?= $site_property->email ?></p>
			</div> <!-- /.left-text -->

			<div class="social-icons pull-right">
				<ul>
					<li><a href="<?= $social_links->facebook ?>"><i class="fa fa-facebook"></i></a></li>
					<li><a href="<?= $social_links->twitter ?>"><i class="fa fa-twitter"></i></a></li>
					<li><a href="<?= $social_links->google ?>"><i class="fa fa-google-plus"></i></a></li>
					<li><a href="<?= $social_links->youtube ?>"><i class="fa fa-youtube"></i></a></li>
				</ul>
			</div> <!-- /.social-icons -->
		</div>
	</section> <!-- /.top-bar --> <!-- /.top-bar -->

	<header class="header">
		<div class="container">
			<div class="logo pull-left">
				<a href="<?= base_url() ?>home">
					<img src="<?= base_url() ?>assets/images/<?= $site_property->logo;?>" alt=""/>
				</a>
			</div>
			<div class="header-right-info pull-right clearfix mt_20">
				<div class="single-header-info">
					<div class="icon-box">
						<div class="inner-box">
							<i class="flaticon-interface-2"></i>
						</div>
					</div>
					<div class="content">
						<h3>EMAIL</h3>
						<p><?= $site_property->email ?></p>
					</div>
				</div>
				<div class="single-header-info">
					<div class="icon-box">
						<div class="inner-box">
							<i class="flaticon-telephone"></i>
						</div>
					</div>
					<div class="content">
						<h3>Call Now</h3>
						<p><b><?= $site_property->phone ?></b></p>
					</div>
				</div>
			</div>
		</div>
	</header> <!-- /.header -->


	<nav class="mainmenu-area stricky">
		<div class="container">
			<div class="navigation pull-left">
				<div class="nav-header hidden-sm hidden-xs">
					<ul>
						<li <?php if ($page == 'index.php') { ?>class="active"<?php } ?>><a href="<?= base_url() ?>home">Home</a></li>
						<li <?php if ($page == 'about_pvsahaya.php' || $page == 'about_committee.php'){ ?>class="active dropdown"<?php } ?>>
							<a href="#">About us <i class="fa fa-angle-down"></i></a>
							<ul class="submenu">
								<li><a href="<?= base_url() ?>about_pvsahaya">About Trust</a></li>
								<li><a href="<?= base_url() ?>about_members">Members</a></li>
							</ul>
						</li>	
                        <li <?php if ($page == '') { ?>class="active"<?php } ?>>
							<a href="#">Services <i class="fa fa-angle-down"></i></a>
							<ul class="submenu">
								  <?php 
                            if(is_array($categories)){
								  foreach ($categories as $categorie) { //print_r($categorie);die;?>
                          <li class="rd-dropdown-item">

                          	 <a class="rd-dropdown-link" href="<?php echo base_url().'home/view/'. $categorie->p_link?>"><?php echo $categorie->category_name; ?></a>
                          	<!-- <a class="rd-dropdown-link" 
                          href="<?php echo base_url().'home/view/'. $categorie->p_link?>">
                          <?php echo $categorie->service_category; ?></a> -->

                          </li>
                        <?php } }?>
								<!-- <li><a href="<?= base_url() ?>services">Service Title One</a></li> -->
								<!-- <li><a href="<?= base_url() ?>services">Service Title Two</a></li>
								<li><a href="<?= base_url() ?>services">Service Title Three</a></li>
								<li><a href="<?= base_url() ?>services">Service Title Four</a></li> -->
							</ul>
						</li>										
                        <li <?php if ($page == 'activities.php') { ?>class="active"<?php } ?>><a href="<?= base_url() ?>activities">Activities</a></li>					
						<li <?php if ($page == 'photo_album.php' || $page == 'video_gallery.php' ||$page == 'media_gallery.php' ) { ?>class="active dropdown"<?php } ?>>
							<a href="#">Gallery <i class="fa fa-angle-down"></i></a>
							<ul class="submenu">
								<li><a href="<?= base_url() ?>photo_album">Photos</a></li>
								<li><a href="<?= base_url() ?>video_gallery">Videos</a></li>
								<li><a href="<?= base_url() ?>media_gallery">Media</a></li>
							</ul>
						</li>
						<li <?php if ($page == 'contact_us.php') { ?>class="active"<?php } ?>><a href="<?= base_url() ?>contactus">Contact Us</a></li>
					</ul>
				</div>
                <div id="mySidenav" class="sidenav">
                  <a href="javascript:void(0)" class="closebtn" onClick="closeNav()">&times;</a>
                  <ul type="none">
                  	<li class="active"><a href="<?= base_url() ?>home">Home</a></li>
					<li data-toggle="collapse" data-target="#demo1"> 
						<a href="#">About us <i class="fa fa-angle-down"></i></a>
						<ul id="demo1" type="none" class="collapse">
							<li><a href="<?= base_url() ?>about_pvsahaya">About PV Sahaya</a></li>
							<li><a href="<?= base_url() ?>about_members">Members</a></li>
						</ul>
					</li>	
					<li data-toggle="collapse" data-target="#demo2"> 
						<a href="#">Services <i class="fa fa-angle-down"></i></a>
						<ul id="demo2" type="none" class="collapse">
							<li><a href="<?= base_url() ?>services">Service Title One</a></li>
							<li><a href="<?= base_url() ?>services">Service Title Two</a></li>
							<li><a href="<?= base_url() ?>services">Service Title Three</a></li>
							<li><a href="<?= base_url() ?>services">Service Title Four</a></li>
						</ul>
					</li>								
                    <li><a href="<?= base_url() ?>activities">Activities</a></li>				
					<li data-toggle="collapse" data-target="#demo2"> 
						<a href="#">Gallery <i class="fa fa-angle-down"></i></a>
						<ul id="demo2" type="none" class="collapse">
							<li><a href="<?= base_url() ?>photo_album">Photos</a></li>
							<li><a href="<?= base_url() ?>video_gallery">Videos</a></li>
							<li><a href="<?= base_url() ?>media_gallery">Media</a></li>
						</ul>
					</li>
                	<li><a href="<?= base_url() ?>contactus">Contact Us</a></li>
                  </ul>
                </div>
                
                <!-- Use any element to open the sidenav -->
				<div class="nav-footer" onClick="openNav()">
					<button><i class="fa fa-bars"></i></button>
				</div>
			</div>
		</div>
	</nav> <!-- /.mainmenu-area -->

