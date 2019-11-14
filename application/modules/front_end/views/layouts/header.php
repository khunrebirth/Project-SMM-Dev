<?php
// initialize
$CI =& get_instance();

// Model
$CI->load->model('Service_model');
?>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title><?php if (!smm_is_mobile()) { echo $title; } else { echo $title_moblie; } ?></title>
	<meta name="description" content="<?php if (!smm_is_mobile()) { echo $meta['description']; } else { echo $meta['description_moblie']; } ?>">
	<meta name="keywords" content="<?php if (!smm_is_mobile()) { echo $meta['keyword']; } else { echo $meta['keyword_moblie']; } ?>">
    <link rel="icon" type="image/png" href="<?php echo base_url('resources/front_end/images/favicon.png'); ?>" />
	<link rel="canonical" href="<?php echo current_url(); ?>" />
	<meta property="og:locale" content="th_TH" />
	<meta property="og:locale:alternate" content="en_US" />
	<meta property="og:type" content="website" />
	<meta property="og:title" content="<?php if (!smm_is_mobile()) { echo $og_twitter['title']; } else { echo $og_twitter['title_moblie']; } ?>" />
	<meta property="og:description" content="<?php if (!smm_is_mobile()) { echo $og_twitter['description']; } else { echo $og_twitter['description_moblie']; } ?>" />
	<meta property="og:url" content="<?php echo current_url(); ?>" />
	<meta property="og:site_name" content="<?php echo base_url(); ?>" />
	<meta property="og:image" content="<?php echo $og_twitter['image']; ?>" />
	<meta name="twitter:card" content="summary" />
	<meta name="twitter:title" content="<?php if (!smm_is_mobile()) { echo $og_twitter['title']; } else { echo $og_twitter['title_moblie']; } ?>" />
	<meta name="twitter:description" content="<?php echo $og_twitter['description']; ?>" />
	<meta name="twitter:image" content="<?php if (!smm_is_mobile()) { echo $og_twitter['description']; } else { echo $og_twitter['description_moblie']; } ?>" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/css/all.min.css" integrity="sha256-+N4/V/SbAFiW1MPBCXnfnP9QSN3+Keu+NlB+0ev/YKQ=" crossorigin="anonymous" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.2/animate.min.css" integrity="sha256-PHcOkPmOshsMBC+vtJdVr5Mwb7r0LkSVJPlPrp/IMpU=" crossorigin="anonymous" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/3.5.7/jquery.fancybox.min.css" integrity="sha256-Vzbj7sDDS/woiFS3uNKo8eIuni59rjyNGtXfstRzStA=" crossorigin="anonymous" />
    <link rel="stylesheet" href="<?php echo base_url('resources/front_end/css/style.min.css'); ?>">
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.4.1.min.js" integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo=" crossorigin="anonymous"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script type="text/javascript" src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <script type="text/javascript" src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/fancybox/3.5.7/jquery.fancybox.min.js" integrity="sha256-yt2kYMy0w8AbtF89WXb2P1rfjcP/HTHLT7097U8Y5b8=" crossorigin="anonymous"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/ScrollToFixed/1.0.8/jquery-scrolltofixed-min.js" integrity="sha256-Kl1vQ0yioe6J6idmj55qGNgoOrKOTJh4WYFdmiVnvZw=" crossorigin="anonymous"></script>
    <script type="text/javascript">
        window.base_url = "<?php echo base_url(); ?>"
    </script>
</head>
<body>

<nav class="navbar navbar-light fixed-top navbar-expand-lg navbar-no-bg">
    <a class="navbar-brand" href="<?php echo base_url($lang . '/' . lang('menu_home')); ?>">
        <img class="logo lazy" data-src="<?php echo base_url('resources/front_end/images/logo-smm.png'); ?>" alt="logo-ssm">
    </a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav ml-auto">
            <li class="nav-item">
                <a class="nav-link text-md-center <?php if ($this->uri->segment(0) == "home" || $this->uri->segment(0) == "หน้าแรก") { echo 'active'; }?>" href="<?php echo base_url($lang . '/' . lang('menu_home')); ?>"><?php echo lang('menu_home'); ?> <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link text-md-center <?php if ($this->uri->segment(0) == "about" || $this->uri->segment(0) == "เกี่ยวกับเรา") { echo 'active'; }?>" href="<?php echo base_url($lang . '/' . lang('menu_about')); ?>"><?php echo lang('menu_about'); ?></a>
            </li>
            <li class="nav-item">
                <a class="nav-link text-md-center <?php if ($this->uri->segment(0) == "services" || $this->uri->segment(0) == "บริการ") { echo 'active'; }?>  dropdown-toggle" data-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample" ><?php echo lang('menu_service'); ?></a>
                <div class="collapse wrap-sub-gnav" id="collapseExample" >
                    <ul class="list-sub-gnav row">
						<?php $services = $CI->Service_model->get_service_all(); ?>
						<?php foreach ($services as $service) { ?>
							<li class="item col-lg-2 col-md-12 col-sm-12">
								<a class="d-flex flex-column text-center" href="<?php echo base_url($lang . '/' . lang('menu_service') . '/' . unserialize($service->slug)[$lang]); ?>">
									<img class="d-md-none d-none img-gnavi d-lg-block lazy" data-src="<?php echo base_url('storage/uploads/images/services/' . unserialize($service->img_on_navbar)[$lang]); ?>">
									<span><?php echo unserialize($service->title)[$lang]; ?></span>
								</a>
							</li>
						<?php } ?>
                    </ul>
                </div>
            </li>
            <li class="nav-item">
                <a class="nav-link text-md-center <?php if ($this->uri->segment(0) == "clients" || $this->uri->segment(0) == "ลูกค้าของเรา") { echo 'active'; }?>" href="<?php echo base_url($lang . '/' . lang('menu_our_clients')); ?>"><?php echo lang('menu_our_clients'); ?></a>
            </li>
            <li class="nav-item">
                <a class="nav-link text-md-center <?php if ($this->uri->segment(0) == "portfolio" || $this->uri->segment(0) == "ผลงานของเรา") { echo 'active'; }?>" href="<?php echo base_url($lang . '/' . lang('menu_portfolios')); ?>"><?php echo lang('menu_portfolios'); ?></a>
            </li>
            <li class="nav-item">
                <a class="nav-link text-md-center <?php if ($this->uri->segment(0) == "blogs" || $this->uri->segment(0) == "บทความ") { echo 'active'; }?>" href="<?php echo base_url($lang . '/' . lang('menu_blogs')); ?>"><?php echo lang('menu_blogs'); ?></a>
            </li>
            <li class="nav-item">
                <a class="nav-link text-md-center <?php if ($this->uri->segment(0) == "teams" || $this->uri->segment(0) == "ทีมงาน") { echo 'active'; }?>" href="<?php echo base_url($lang . '/' . lang('menu_teams')); ?>"><?php echo lang('menu_teams'); ?></a>
            </li>
            <li class="nav-item">
                <a class="nav-link text-md-center <?php if ($this->uri->segment(0) == "join-us" || $this->uri->segment(0) == "ร่วมงานกับเรา") { echo 'active'; }?>" href="<?php echo base_url($lang . '/' . lang('menu_join_us_slug')); ?>"><?php echo lang('menu_join_us'); ?></a>
            </li>
            <li class="nav-item wrap-btn-centact">
                <a class="btn btn-link btn__contact btn__contact--type-icon" href="tel:021939062"><i class="fas fa-phone-alt"></i></a>
            </li>
            <li class="nav-item wrap-btn-centact">
                <a class="btn btn-link btn__contact btn__contact--type-icon btn__contact--type-line" target="_blank" href="http://line.me/ti/p/~todayspark"><i class="far fa-comment-dots"></i></a>
            </li>
            <li class="nav-item wrap-btn-centact">
                <a class="btn btn-link btn__contact" href="<?php echo base_url($lang . '/' . lang('menu_contact')); ?>"><?php echo lang('menu_contact'); ?></a>
            </li>
            <li class="nav-item">
                <ul class="list-lang">
                    <li><a href="<?php echo base_url('th'); ?>">TH</a></li>
                    <li><a href="<?php echo base_url('en'); ?>">EN</a></li>
                </ul>
            </li>
        </ul>
    </div>
</nav>
