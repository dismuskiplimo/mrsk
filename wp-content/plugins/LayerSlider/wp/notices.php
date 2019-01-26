<?php

// Update notice
if(strpos($_SERVER['REQUEST_URI'], '?page=layerslider') !== false) {
	add_action('admin_notices', 'layerslider_update_notice');
	add_action('admin_notices', 'layerslider_unauthorized_update_notice');
	add_action('admin_notices', 'layerslider_dependency_notice');
	if( get_option('ls-show-support-notice', 1) && ! get_option('layerslider-authorized-site', null) ) {
		add_action('admin_notices', 'layerslider_premium_support');
	}

	if( get_option('ls-show-canceled_activation_notice', 0) ) {
		add_action('admin_notices', 'layerslider_canceled_activation');
	}
}

// Storage notice
if(get_option('layerslider-slides') !== false) {

	global $pagenow;
	if($pagenow == 'plugins.php' || $pagenow == 'index.php' || strpos($_SERVER['REQUEST_URI'], 'layerslider')) {
		add_action('admin_notices', 'layerslider_compatibility_notice');
	}
}

// License notification under the plugin row on the Plugins screen
if(!get_option('layerslider-authorized-site', null)) {
	add_action('after_plugin_row_'.LS_PLUGIN_BASE, 'layerslider_plugins_purchase_notice', 10, 3 );
}

function layerslider_update_notice() {

	if(get_option('layerslider-authorized-site', false)) {

		// Get plugin updates
		$updates = get_plugin_updates();

		// Check for update
		if(isset($updates[LS_PLUGIN_BASE]) && isset($updates[LS_PLUGIN_BASE]->update)) {
			$update = $updates[LS_PLUGIN_BASE];
			add_thickbox();
			?>
			<div class="layerslider_notice">
				<img src="<?php echo LS_ROOT_URL.'/static/admin/img/ls_80x80.png' ?>" alt="LayerSlider icon">
				<h1><?php _e('An update is available for LayerSlider WP!', 'LayerSlider') ?></h1>
				<p>
					<?php echo sprintf(__('You have version %1$s. Update to version %2$s.', 'LayerSlider'), $update->Version, $update->update->new_version); ?><br>
					<i><?php echo $update->update->upgrade_notice ?></i>
					<a href="<?php echo wp_nonce_url(self_admin_url('update.php?action=upgrade-plugin&plugin='.LS_PLUGIN_BASE), 'upgrade-plugin_'.LS_PLUGIN_BASE) ?>" class="button button-primary button-hero" title="<?php _e('Install now', 'LayerSlider') ?>">
						<?php _e('Install now', 'LayerSlider') ?>
					</a>
				</p>
				<div class="clear"></div>
			</div>
			<?php
		}
	}
}

function layerslider_unauthorized_update_notice() {
	if(!get_option('layerslider-authorized-site', false)) {
		$latest = get_option('ls-latest-version', false);
		if($latest && version_compare(LS_PLUGIN_VERSION, $latest, '<')) {
			$last_notification = get_option('ls-last-update-notification', LS_PLUGIN_VERSION);
			if(version_compare($last_notification, $latest, '<')) {
			?>
			<div class="layerslider_notice">
				<img src="<?php echo LS_ROOT_URL.'/static/admin/img/ls_80x80.png' ?>" alt="LayerSlider icon">
				<h1><?php _e('An update is available for LayerSlider WP!', 'LayerSlider') ?></h1>
				<p>
					<?php echo sprintf(__('You have version %1$s. The latest version is %2$s.', 'LayerSlider'), LS_PLUGIN_VERSION, $latest); ?><br>
					<i><?php _e('New releases contain new features, bug fixes and various improvements across the entire plugin.', 'LayerSlider') ?></i>
					<i><?php _e("Set up auto-updates to upgrade to this new version, or request it from the author of your theme if you've received LayerSlider from them.", "LayerSlider") ?> <a href="https://support.kreaturamedia.com/docs/layersliderwp/documentation.html#updating" target="_blank"><?php _e('Click here', 'LayerSlider') ?></a> <?php _e('to learn more', 'LayerSlider') ?></a>.</i>
					<a href="<?php echo wp_nonce_url('?page=layerslider&action=hide-update-notice', 'hide-update-notice') ?>" class="button button-extra"><?php _e('Hide this message', 'LayerSlider') ?></a>
				</p>
				<div class="clear"></div>
			</div><?php
			}
		}
	}
}


function layerslider_compatibility_notice() { ?>
	<div class="layerslider_notice">
		<img src="<?php echo LS_ROOT_URL.'/static/admin/img/ls_80x80.png' ?>" alt="LayerSlider icon">
		<h1><?php _e('The new version of LayerSlider WP is almost ready!', 'LayerSlider') ?></h1>
		<p>
			<?php _e('For a faster and more reliable solution, LayerSlider WP needs to convert your data associated with the plugin. Your sliders and settings will remain still, and it only takes a click on this button.', 'LayerSlider') ?>

			<a href="<?php echo wp_nonce_url('?page=layerslider&action=convert', 'convertoldsliders') ?>" class="button button-primary button-hero">
				<?php _e('Convert Data', 'LayerSlider') ?>
			</a>
		</p>
		<div class="clear"></div>
	</div>
<?php }

function layerslider_dependency_notice() {
	if(version_compare(PHP_VERSION, '5.3.0', '<') || !class_exists('DOMDocument')) {
	?>
	<div class="layerslider_notice">
		<img src="<?php echo LS_ROOT_URL.'/static/admin/img/ls_80x80.png' ?>" alt="LayerSlider icon">
		<h1><?php _e('Server configuration issues detected!', 'LayerSlider') ?></h1>
		<p>
			<?php _e('phpQuery, an external library in LayerSlider, have unmet dependencies. It requires PHP5 with the following extensions installed: PHP DOM extension, PHP Multibyte String extension. Please contact with your hosting provider to resolve these dependencies, as it will likely prevent LayerSlider from functioning properly.', 'LayerSlider') ?>
			<strong><?php _e('This issue could result a blank page in slider builder.', 'LayerSlider') ?></strong>
		</p>
		<div class="clear"></div>
	</div>
<?php } }

function layerslider_premium_support() {
	if(get_user_meta(get_current_user_id(), 'layerslider_help_wp_pointer', true)) {
?>

<div class="layerslider_notice">
	<img src="<?php echo LS_ROOT_URL.'/static/admin/img/ls_80x80.png' ?>" alt="LayerSlider icon">
		<h1><?php _e('Unlock the full potential of LayerSlider', 'LayerSlider') ?></h1>
		<p>
			<?php _e('Activate LayerSlider to unlock premium features, slider templates and other exclusive content & services. Receive live plugin updates with 1-Click installation (including optional early access releases) and premium support. If you\'ve received LayerSlider bundled in a theme, please refer to <a href="https://support.kreaturamedia.com/docs/layersliderwp/documentation.html#activation-bundles" target="_blank">this guide</a> in our online documentation.', 'LayerSlider') ?>
			<a href="<?php echo wp_nonce_url('?page=layerslider&action=hide-support-notice', 'hide-support-notice') ?>" class="button">Hide this message</a>
		</p>
	<div class="clear"></div>
</div>

<?php } }


function layerslider_plugins_purchase_notice( $plugin_file, $plugin_data, $status ) {
	$table = _get_list_table('WP_Plugins_List_Table');
	if( empty( $plugin_data['update'] ) ) {
	?>
	<tr class="plugin-update-tr active ls-plugin-update-row" data-slug="<?php echo LS_PLUGIN_SLUG ?>" data-plugin="<?php echo LS_PLUGIN_BASE ?>">
		<td colspan="<?php echo $table->get_column_count(); ?>" class="plugin-update colspanchange">
			<div class="update-message notice inline notice-warning notice-alt">
				<p>
					<?php
						printf(__('License activation is required in order to receive updates and premium support for LayerSlider. %sPurchase a license%s or %sread the documentation%s to learn more. %sGot LayerSlider in a theme?%s', 'installer'),
							'<a href="http://codecanyon.net/cart/add_items?ref=kreatura&amp;item_ids=1362246" target="_blank">', '</a>', '<a href="https://support.kreaturamedia.com/docs/layersliderwp/documentation.html#activation" target="_blank">', '</a>', '<a href="https://support.kreaturamedia.com/docs/layersliderwp/documentation.html#activation-bundles" target="_blank">', '</a>');
					?>
				</p>
			</div>
		</td>
	</tr>
<?php } }

function layerslider_canceled_activation() { ?>
	<div class="layerslider_notice">
	<img src="<?php echo LS_ROOT_URL.'/static/admin/img/ls_80x80.png' ?>" alt="LayerSlider icon">
	<h1><?php _e('LayerSlider product activation was canceled on this site', 'LayerSlider') ?></h1>
	<p>
		<?php _e("You've previously activated your copy of LayerSlider on this site to receive plugin updates, use exclusive features and access to premium templates in the Template Store. However, your activation was canceled and you can no longer enjoy these benefits. There are a number of potential reasons why this could happen, the common ones include: you've remotely deactivated your site using our online tools or asked us to do the same on your behalf; your purchase have been refunded or the transaction disputed; Envato have revoked your purchase code with an undisclosed reason.", 'LayerSlider') ?>
		<br><br> <?php _e('To review all the possible reasons and find out what to do next, please refer to the <a target="_blank" href="https://support.kreaturamedia.com/docs/layersliderwp/documentation.html#canceled-activation">Why was my activation canceled?</a> section in our documentation.', 'LayerSlider') ?>
		<a href="<?php echo wp_nonce_url('?page=layerslider&action=hide-canceled-activation-notice', 'hide-canceled-activation-notice') ?>" class="button button-primary button-hero">OK, I understand</a>
	</p>
	<div class="clear"></div>
</div>
<?php }

