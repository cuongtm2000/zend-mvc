function runbanner(w, h){
	var $container = $(".container");
	$container.wtRotator({
		width:w,
		height:h,
		button_width:24,
		button_height:24,
		button_margin:4,
		auto_start:true,
		delay:4000,
		transition:"random",
		transition_speed:800,
		block_size:100,
		vert_size:50,
		horz_size:50,
		cpanel_align:"BR",
		display_thumbs:true,
		display_dbuttons:true,
		display_playbutton:true,
		display_tooltip:true,
		display_numbers:true,
		display_timer:true,
		mouseover_pause:false,
		cpanel_mouseover:false,
		text_mouseover:false,
		text_effect:"down",
		shuffle:true, /*Hiển thị hình ảnh random, nếu để false thì sẽ theo thứ tự*/
		block_delay:75,
		vstripe_delay:100,
		hstripe_delay:125	
	});
	
}