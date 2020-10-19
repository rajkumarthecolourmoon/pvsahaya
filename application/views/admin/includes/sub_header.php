<nav class="navbar navbar-default navbar-static-top m-b-0">
    <div class="navbar-header"> <a class="navbar-toggle hidden-sm hidden-md hidden-lg " href="javascript:void(0)" data-toggle="collapse" data-target=".navbar-collapse"><i class="ti-menu"></i></a>
        <div class="top-left-part" style="margin-left:0px;"><a class="logo" target="blank" href="<?= base_url() ?>home"><i class="fa fa-home fa-3x" aria-hidden="true"></i><span class="hidden-xs"></span></a></div>;
        <ul class="nav navbar-top-links navbar-left hidden-xs">
            <li><a href="javascript:void(0)" class="open-close hidden-xs waves-effect waves-light"><i class="icon-arrow-left-circle ti-menu"></i></a></li>

        </ul>
        <ul class="nav navbar-top-links navbar-right pull-right">
            <li class="dropdown"> <a class="dropdown-toggle waves-effect waves-light" data-toggle="dropdown" href="#"><i class="ti-settings"></i>
                    <div class="notify"><span class="heartbit"></span><span class="point"></span></div>
                </a>
                <ul class="dropdown-menu mailbox animated bounceInDown">
                    <style type="text/css">
                        .message-center .mail-contnet h5 {
                            overflow: visible;
                        }
                    </style>
                    <li>
                        <div class="message-center">
                            <a href="<?php echo base_url(); ?>admin/dashboard/profile">

                                <div class="mail-contnet">
                                    <h5>Update Site Settings</h5> </div>
                            </a>
                            <a href="<?php echo base_url(); ?>admin/dashboard/social_media">

                                <div class="mail-contnet">
                                    <h5>Social Links</h5> 
                                </div>
                            </a>
                            <a href="<?php echo base_url(); ?>admin/dashboard/change_password">

                                <div class="mail-contnet">
                                    <h5>Change Password</h5> </div>
                            </a>
                            <a href="<?php echo base_url(); ?>admin/dashboard/logs">

                                <div class="mail-contnet">
                                    <h5>Logs</h5> </div>
                            </a>
                            <a href="<?php echo base_url(); ?>admin/dbbackup">

                                <div class="mail-contnet">
                                    <h5>Download Database <i class="fa fa-download" aria-hidden="true"></i></h5> </div>
                            </a>
                            <a href="<?php echo base_url(); ?>admin/logout">

                                <div class="mail-contnet">
                                    <h5>Logout</h5> </div>
                            </a>


                        </div>
                    </li>
                    <!--   <li>
                          <a class="text-center" href="javascript:void(0);"> <strong>See all notifications</strong> <i class="fa fa-angle-right"></i> </a>
                      </li> -->
                </ul>
                <!-- /.dropdown-messages -->
            </li>
            <!-- /.dropdown -->

        </ul>
    </div>
    <!-- /.navbar-header -->
    <!-- /.navbar-top-links -->
    <!-- /.navbar-static-side -->
</nav>
<div class="navbar-default sidebar" role="navigation">
    <div class="sidebar-nav navbar-collapse slimscrollsidebar">
        <ul class="nav" id="side-menu">
            <li class="sidebar-search hidden-sm hidden-md hidden-lg">
                <!-- input-group -->
                <div class="input-group custom-search-form">
                    <input type="text" class="form-control" placeholder="Search..."> <span class="input-group-btn">
                        <button class="btn btn-default" type="button"> <i class="fa fa-search"></i> </button>
                    </span> </div>
                <!-- /input-group -->
            </li>

            <li> <a href="<?= base_url() ?>admin/dashboard" class="waves-effect"><i class="linea-icon linea-basic fa-fw" data-icon="v"></i> <span class="hide-menu"> Dashboard <span class="fa arrow"></span> </span></a>
            </li>
            <li>
                <a href="inbox.html" class="waves-effect"><i data-icon=")" class="fa fa-newspaper-o"></i> <span class="hide-menu">CMS/BLOG<span class="fa arrow"></span><span class="label label-rouded label-danger pull-right"></span></span></a>
                <ul class="nav nav-second-level">
                    <li><a href="<?= base_url() ?>admin/cms/slider">Slider</a></li>
                   <!-- <li><a href="<?= base_url() ?>admin/cms/administrative_bodies">Administrative Bodies</a></li>
                    <li><a href="<?= base_url() ?>admin/cms/advisory_council">Advisory Council</a></li>
                    <li><a href="<?= base_url() ?>admin/cms/honorable_council">Honorable Council</a></li> -->
                    <li><a href="<?= base_url() ?>admin/cms/services">Services</a></li>
                    <li><a href="<?= base_url() ?>admin/cms/category">Category 
                    <li><a href="<?= base_url() ?>admin/cms/achievements">Achievements</a></li>
                    <li><a href="<?= base_url() ?>admin/cms/activities">Activities</a></li>
                    <li><a href="<?= base_url() ?>admin/cms/testimonials">Testimonials</a></li>
                  <!--  <li><a href="<?= base_url() ?>admin/cms/welcome">Welcome to IAPC</a></li> -->
<!--                    <li><a href="<?= base_url() ?>admin/cms/overview">Overview</a></li>-->
                  <!--  <li><a href="<?= base_url() ?>admin/cms/why_we_are">Why We Are</a></li>
                    <li><a href="<?= base_url() ?>admin/cms/our_news_events">Our News & Events</a></li>                     
                    <li>
                    <a href="inbox.html" class="waves-effect"> <span class="hide-menu">Membership<span class="fa arrow"></span><span class="label label-rouded label-danger pull-right"></span></span></a>
                   <ul class="nav nav-third-level"> 
                   <li><a href="<?= base_url() ?>admin/cms/membership_title">Title</a></li>
                   <li><a href="<?= base_url() ?>admin/cms/membership_member">Member</a></li>
                   </ul></li> -->
                   <li> 
                    <a href="inbox.html" class="waves-effect"> <span class="hide-menu">Gallery<span class="fa arrow"></span><span class="label label-rouded label-danger pull-right"></span></span></a>
                   <ul class="nav nav-third-level"> 
                   <li><a href="<?= base_url() ?>admin/cms/photo_albums">Photos</a></li>
                   <li><a href="<?= base_url() ?>admin/cms/vedio_gallery">Vedios</a></li>
                   <li><a href="<?= base_url() ?>admin/cms/media">Media</a></li>
                   </ul></li>
                 <!--  <li><a href="<?= base_url() ?>admin/cms/addresses">Addresses</a></li> -->
                   <!-- <li><a href="<?= base_url() ?>admin/cms/varieties">Varieties</a></li>
                    <li><a href="<?= base_url() ?>admin/cms/activities">Latest News</a></li>
                    <li><a href="<?= base_url() ?>admin/cms/gallery">Gallery</a></li>
                   <li><a href="<?= base_url() ?>admin/cms/benefits">Benefits</a></li>
                    <li><a href="<?= base_url() ?>admin/cms/testimonials">Testimonials</a></li>-->
                    <li>
                    <a href="inbox.html" class="waves-effect"> <span class="hide-menu">About Us<span class="fa arrow"></span><span class="label label-rouded label-danger pull-right"></span></span></a>
                   <ul class="nav nav-third-level"> 
                   <li><a href="<?= base_url() ?>admin/cms/aboutswwecha">About PV Sahaya</a></li>
                   <li><a href="<?= base_url() ?>admin/cms/committee">Members</a></li>
                   </ul></li>                    
<!--                    <li><a href="<?= base_url() ?>admin/cms/our_team">Our Team</a></li>-->
                   <!-- <li><a href="<?= base_url() ?>admin/cms/videos">Videos</a></li>-->
<!--                    <li><a href="<?= base_url() ?>admin/cms/media">Media</a></li>
                    <li><a href="<?= base_url() ?>admin/cms/links">Links</a></li>-->
                 <!--   <li><a href="<?= base_url() ?>admin/cms/cms_pages">CMS</a></li>-->
  <!--                    <li><a href="<?= base_url() ?>admin/cms/faqs">FAQ's</a></li>-->
                </ul>
            </li>
            <li><a href="<?php echo base_url(); ?>admin/logout" class="waves-effect"><i class="icon-logout fa-fw"></i> <span class="hide-menu">Log out</span></a></li>

        </ul>
    </div>
</div>