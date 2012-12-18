jQuery(document).ready(function() {
    jQuery('#mycarousel').jcarousel({
    	wrap: 'circular',
		auto: 4,
        speed: 200,
		scroll: 1
    });
	jQuery('#item_deals').jcarousel({
    	wrap: 'circular',
		auto: 6,
        speed: 200,
		scroll: 1
    });
});