
	<footer class="footer sec-padding">
		<div class="container">
			<div class="row">
				<div class="col-md-3 col-sm-6">
					<div class="footer-widget about-widget">
                    	<h3 class="title">Contact Info</h3>						
						<ul class="contact">
							<li><i class="fa fa-map-marker"></i> <span><?= $site_property->address ?></span></li>
							<li><i class="fa fa-phone"></i> <span><?= $site_property->phone ?></span></li>
							<li><i class="fa fa-envelope-o"></i> <span><?= $site_property->email ?></span></li>
						</ul>
						<ul class="social">
							<li><a href="<?= $social_links->facebook ?>"><i class="fa fa-facebook"></i></a></li>
							<li><a href="<?= $social_links->twitter ?>"><i class="fa fa-twitter"></i></a></li>
							<li><a href="<?= $social_links->google ?>"><i class="fa fa-google-plus"></i></a></li>
							<li><a href="<?= $social_links->youtube ?>"><i class="fa fa-youtube"></i></a></li>
						</ul>
					</div>
				</div>
				<div class="col-md-3 col-sm-6">
					<div class="footer-widget quick-links">
						<h3 class="title">Quick Links</h3>
						<ul>
							<li><a href="<?= base_url() ?>home">Home</a></li>
                            <li><a href="<?= base_url() ?>about_pvsahaya">About us</a></li>	
                            <li><a href="<?= base_url() ?>services">Services</a></li>
                            <li><a href="<?= base_url() ?>activities">Activities</a></li>
                            <li><a href="<?= base_url() ?>photo_album">Gallery</a></li>
                            <li><a href="<?= base_url() ?>contactus">Contact Us</a></li>
						</ul>
					</div>
				</div>
				<div class="col-md-3 latest-post col-sm-6">
					<div class="footer-widget">
						<h3 class="title">Follow Us</h3>
						<iframe src="//www.facebook.com/plugins/likebox.php?href=https%3A%2F%2Fwww.facebook.com%2Ffacebook&amp;width=320&amp;height=210&amp;show_faces=true&amp;colorscheme=light&amp;stream=false&amp;show_border=false&amp;header=false" scrolling="no" frameborder="0" style="border:none; overflow:hidden; width:100%; height:220px; background-color:#FFFFFF " allowTransparency="true"></iframe>
					</div>
				</div>
				<div class="col-md-3 col-sm-6">
                <div class="footer-widget">
                <h3 class="title">Location</h3>
					<iframe src="<?= $site_property->map ?>" width="100%" height="220" frameborder="0" style="border:0" allowfullscreen></iframe>
                    </div>
				</div>
			</div>
		</div>
	</footer>


	<section class="footer-bottom">
		<div class="container text-center">
			<p>Copyright © <?= $site_property->foot ?> | Made with <i class="fa fa-heart-o"></i> by <a href="http://thecolourmoon.com/" target="blank">Colourmoon</a></p>
		</div>
	</section>

	<!--Scroll to top-->
	<div class="scroll-to-top"><span class="fa fa-angle-up"></span></div>


	<!-- main jQuery -->
	<script src="assets/js/jquery-1.11.1.min.js"></script>
	<!-- bootstrap -->
	<script src="assets/js/bootstrap.min.js"></script>
	<!-- bx slider -->
	<script src="assets/js/jquery.bxslider.min.js"></script>
	<!-- owl carousel -->
	<script src="assets/js/owl.carousel.min.js"></script>
	<!-- validate -->
	<script src="assets/js/jquery-parallax.js"></script>
	<!-- validate -->
	<script src="assets/js/validate.js"></script>
	<!-- mixit up -->
	<script src="assets/js/jquery.mixitup.min.js"></script>
	<!-- fancybox -->
	<script src="assets/js/jquery.fancybox.pack.js"></script>
	<script src="assets/js/jquery.fancybox-media.js"></script>
	<!-- easing -->
	<script src="assets/js/jquery.easing.min.js"></script>
	<!-- circle progress -->
	<script src="assets/js/circle-progress.js"></script>
	<!-- appear js -->
	<script src="assets/js/jquery.appear.js"></script>
	<!-- count to -->
	<script src="assets/js/jquery.countTo.js"></script>

	<!-- isotope script -->
	<script src="assets/js/isotope.pkgd.min.js"></script>
	<!-- jQuery ui js -->
	<script src="assets/js/jquery-ui.js"></script>
	
	<!-- revolution scripts -->

	<script src="assets/js/jquery.themepunch.tools.min.js"></script>
	<script src="assets/js/jquery.themepunch.revolution.min.js"></script>
	<script type="text/javascript" src="assets/js/revolution.extension.actions.min.js"></script>
	<script type="text/javascript" src="assets/js/revolution.extension.carousel.min.js"></script>
	<script type="text/javascript" src="assets/js/revolution.extension.kenburn.min.js"></script>
	<script type="text/javascript" src="assets/js/revolution.extension.layeranimation.min.js"></script>
	<script type="text/javascript" src="assets/js/revolution.extension.migration.min.js"></script>
	<script type="text/javascript" src="assets/js/revolution.extension.navigation.min.js"></script>
	<script type="text/javascript" src="assets/js/revolution.extension.parallax.min.js"></script>
	<script type="text/javascript" src="assets/js/revolution.extension.slideanims.min.js"></script>
	<script type="text/javascript" src="assets/js/revolution.extension.video.min.js"></script>


	<!-- thm custom script -->
	<script src="assets/js/custom.js"></script>


</body>
</html>