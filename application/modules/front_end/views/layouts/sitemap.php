<?php
// initialize
$CI =& get_instance();

// Model
$CI->load->model('Service_model');
$CI->load->model('Blog_model');
?>
<div id="fb-root"></div>
<!-- <script async defer crossorigin="anonymous" src="https://connect.facebook.net/th_TH/sdk.js#xfbml=1&version=v4.0&appId=189754555007223&autoLogAppEvents=1"></script> -->
<link rel="stylesheet" href="<?php echo base_url('resources/front_end/css/style_sitemap.min.css'); ?>">
<div class="sec-footer-sitemap" id="accordion">
	<div class="card text-center box-footer-sitemap">
		<div class="show">
			<div class="card-body">
				<div class="sec-sitemap">
					<div class="row">
						<div class="sec-social-contact col-12">
							<div class="row">
								<div class="col-cmn-5 item-fb-page">
									<img class="lazy" data-src="<?php echo base_url('resources/front_end/images/title-social.png'); ?>" alt="">
								</div>
								<div class="col-cmn-5 item-fb-page">
									<div class="fb-page" data-href="https://www.facebook.com/iSEO.SEM/" data-width="" data-height="" data-small-header="<?php if (!smm_is_mobile()) { echo 'false'; } { echo 'true'; } ?>" data-adapt-container-width="<?php if (!smm_is_mobile()) { echo 'true'; } else { echo 'false'; } ?>" data-hide-cover="<?php if (!smm_is_mobile()) { echo 'false'; } else { echo 'true'; } ?>" data-show-facepile="false">
										<blockquote cite="https://www.facebook.com/iSEO.SEM/" class="fb-xfbml-parse-ignore"><a href="https://www.facebook.com/iSEO.SEM/">รับบริการทำ SEO SEM</a>
										</blockquote>
									</div>
								</div>
								<div class="col-cmn-5 item-fb-page">
									<div class="fb-page" data-href="https://www.facebook.com/SocialMediaMarketing/" data-width="" data-height="" data-small-header="<?php if (!smm_is_mobile()) { echo 'false'; } { echo 'true'; } ?>" data-adapt-container-width="<?php if (!smm_is_mobile()) { echo 'true'; } else { echo 'false'; } ?>" data-hide-cover="<?php if (!smm_is_mobile()) { echo 'false'; } else { echo 'true'; } ?>" data-show-facepile="false">
										<blockquote cite="https://www.facebook.com/SocialMediaMarketing/" class="fb-xfbml-parse-ignore"><a href="https://www.facebook.com/SocialMediaMarketing/">Social Media Master</a></blockquote>
									</div>
								</div>
								<div class="col-cmn-5 item-fb-page">
									<div class="fb-page" data-href="https://www.facebook.com/EmailDirectMarketing.EDM/" data-width="" data-height="" data-small-header="<?php if (!smm_is_mobile()) { echo 'false'; } { echo 'true'; } ?>" data-adapt-container-width="<?php if (!smm_is_mobile()) { echo 'true'; } else { echo 'false'; } ?>" data-hide-cover="<?php if (!smm_is_mobile()) { echo 'false'; } else { echo 'true'; } ?>" data-show-facepile="false">
										<blockquote cite="https://www.facebook.com/EmailDirectMarketing.EDM/" class="fb-xfbml-parse-ignore"><a href="https://www.facebook.com/EmailDirectMarketing.EDM/">บริการรับส่งอีเมล์ : Email Direct Marketing</a></blockquote>
									</div>
								</div>
								<div class="col-cmn-5 item-fb-page item-youtube">
									<a href="#dummy">
										<img class="img-fluid lazy" data-src="<?php echo base_url(!smm_is_safari() ? 'resources/front_end/images/youtube.png.webp' : 'resources/front_end/images/youtube.png'); ?>" alt="youtube">
									</a>
								</div>
							</div>
						</div>
						<div class="col-lg-4 col-md-6 col-sm-12">
							<h2 class="contact__form--title"><?php echo lang('page_contact_title_first'); ?><span><?php echo lang('page_contact_title_center'); ?></span><?php echo lang('page_contact_title_end'); ?></h2>
							<p class="contact__form--body mb-4"><?php echo lang('page_contact_desc'); ?></p>
							<form class="mt-4" action="<?php echo base_url('contact/send') ?>" method="post">
								<div class="form-group">
									<input type="text" class="form-control" name="name" placeholder="<?php echo lang('page_contact_form_txt_name'); ?>" required>
								</div>
								<div class="form-group">
									<input type="text" class="form-control" name="email" placeholder="<?php echo lang('page_contact_form_txt_email'); ?>" required>
								</div>
								<div class="form-group">
									<input type="text" class="form-control" name="company" placeholder="<?php echo lang('page_contact_form_txt_company'); ?>" required>
								</div>
								<div class="form-group">
									<input type="text" class="form-control" name="phone" placeholder="<?php echo lang('page_contact_form_txt_phone'); ?>" required>
								</div>
								<div class="form-group">
									<textarea class="form-control" rows="5" name="detail" placeholder="<?php echo lang('page_contact_form_txt_detail'); ?>"></textarea>
								</div>
								<div class="col text-center">
									<button type="submit" class="btn btn-primary text-center"><?php echo lang('page_contact_button_send'); ?></button>
								</div>
							</form>
						</div>
						<div class="col-sm-12 col-md-6 sec-site-link col-lg-8 mb-3 mb-md-0">
							<div class="row">
								<div class="col-lg-3 col-sm-12 col-md-12">
									<a class="d-block text-left ttl-footer-list" href=""><?php echo lang('menu_home'); ?></a>
									<ul class="list-sitemap">
										<li><a class="text-left" href="<?php echo base_url($lang . '/' . lang('menu_home')); ?>"><?php echo lang('menu_home'); ?></a></li>
										<li><a class="text-left" href="<?php echo base_url($lang . '/' . lang('menu_about')); ?>"><?php echo lang('menu_about'); ?></a></li>
										<li><a class="text-left" href="<?php echo base_url($lang . '/' . lang('menu_our_clients')); ?>"><?php echo lang('menu_our_clients'); ?></a></li>
										<li><a class="text-left" href="<?php echo base_url($lang . '/' . lang('menu_blogs')); ?>"><?php echo lang('menu_blogs'); ?></a></li>
										<li><a class="text-left" href="<?php echo base_url($lang . '/' . lang('menu_teams')); ?>"><?php echo lang('menu_teams'); ?></a></li>
									</ul>
								</div>
								<div class="col-lg-5 col-sm-12 col-md-12">
									<a class="d-block text-left ttl-footer-list" href=""><?php echo lang('menu_service'); ?></a>
									<ul class="list-sitemap">
										<?php $services = $CI->Service_model->get_service_all(); ?>
										<?php foreach ($services as $service) { ?>
											<li><a class="text-left" href="<?php echo base_url($lang . '/' . lang('menu_service') . '/' . unserialize($service->slug)[$lang]); ?>"><?php echo unserialize($service->title)[$lang]; ?></a></li>
										<?php } ?>
									</ul>
								</div>
								<div class="col-lg-4 col-sm-12 col-md-12">
									<a class="d-block text-left ttl-footer-list" href=""><?php echo lang('menu_blogs'); ?></a>
									<ul class="list-sitemap">
										<?php $last_blogs = $CI->Blog_model->get_last_blog(10); ?>
										<?php foreach ($last_blogs as $last_blog) { ?>
											<li><a class="text-left" href="<?php echo base_url($lang . '/' . lang('menu_blogs') . '/' . unserialize($last_blog->blog_category_slug)[$lang] . '/' .  unserialize($last_blog->slug)[$lang]); ?>"><?php echo unserialize($last_blog->title)[$lang]; ?></a></li>
										<?php } ?>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
