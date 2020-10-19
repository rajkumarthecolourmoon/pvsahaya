<?php include 'includes/header.php';?>
<section class="inner-header">
	<div class="container">
		<div class="row">
			<div class="col-md-12 sec-title colored text-center">
				<h2>Contact Us</h2>
				<ul class="breadcumb">
					<li><a href="<?= base_url() ?>home">Home</a></li>
					<li><i class="fa fa-angle-right"></i></li>
					<li><span>Contact Us</span></li>
				</ul>
				<span class="decor"><span class="inner"></span></span>
			</div>
		</div>
	</div>
</section>
<?php
                        $msg = $this->session->flashdata('msg');
                        if ($msg != "") {
                            ?>
                            <div class="alert alert-success animated bounceIn" role="alert">
                                <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                <i class='fa fa-check-circle'></i>  <?= $msg; ?>
                            </div>
                        <?php } ?>

<section class="contact-content sec-padding">
		<div class="container">
			<div class="mb-20">
				<iframe src="<?= $site_property->map ?>" width="100%" height="350" frameborder="0" style="border:0" allowfullscreen></iframe>
			</div>
			<div class="row">
				<div class="col-md-8 col-sm-6">
					<h2>Get In Touch</h2>
					<form class="contact-form row" action="<?= base_url() ?>home/send_mail" method="POST" id="contact_form">
						<div class="col-md-12">
							<input type="text" name="name" placeholder="Name" id="xs-name">
						</div>
						<div class="col-md-6">
							<input type="text" name="email" placeholder="Email" id="xs-email">
						</div>
						<div class="col-md-6">
							<input type="text" name="mobile" placeholder="Mobile" id="xs-mobile">
						</div>
						<div class="col-md-12">
							<textarea name="message" placeholder="Message" cols="30" rows="8"></textarea>
						</div>
						<div class="col-md-12"><button class="thm-btn" type="submit">Send</button></div>
					</form>
				</div>
				<div class="col-md-4 col-sm-6">
					<h2>Address</h2>
					<ul class="contact-info">
						<li>
							<div class="icon-box">
								<div class="inner">
									<i class="fa fa-map-marker"></i>
								</div>
							</div>
							<div class="content-box">
								<h4>Address</h4>
								<p><?= $site_property->address ?></p>
							</div>
						</li>
						<li>
							<div class="icon-box">
								<div class="inner">
									<i class="fa fa-phone"></i>
								</div>
							</div>
							<div class="content-box">
								<h4>Phone</h4>
								<p> <?= $site_property->phone ?></p>
							</div>
						</li>
						<li>
							<div class="icon-box">
								<div class="inner">
									<i class="fa fa-envelope-o"></i>
								</div>
							</div>
							<div class="content-box">
								<h4>Email</h4>
								<p><?= $site_property->email ?></p>
							</div>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</section>
<?php include 'includes/footer.php';?>

<link rel="stylesheet" href="<?= base_url()?>assets/css/validate.css">
<script src="<?= base_url()?>assets/js/jquery.validate.min.js"></script>
<script type="text/javascript">
    $(function ()
    {
        $.validator.addMethod("lettersonly", function (value, element)
        {
            return this.optional(element) || /^[a-z ]+$/i.test(value);
        }, "Please enter only characters");

        $("#contact_form").validate(
                {
                    // Rules for form validation
                    rules:
                            {

                                name:
                                        {
                                            required: true,
                                            lettersonly: true
                                        },
                                mobile:
                                        {
                                            required: true,
                                            digits: true
                                        },
                                email:
                                        {
                                            required: true,
                                            email:true
                                        },
                                message:
                                        {
                                            required: true
                                        }
                            },

                    // Messages for form validation
                    messages:
                            {

                                name:
                                        {
                                            required: "Please enter your name"
                                        },
                                mobile:
                                        {
                                            required: "Please enter your mobile"
                                        },
                                email:
                                        {
                                            required: "Please enter your mail"
                                        },
                                message:
                                        {
                                            required: "Please enter massage"
                                        },
                                
                            },

                    // Do not change code below
                    errorPlacement: function (error, element)
                    {
                        error.appendTo(element.parent());
                    }
                });
    });
</script>