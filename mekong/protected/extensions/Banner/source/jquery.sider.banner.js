function runbanner(w, h){
	var $container = $(".slider");
	$container.advancedSlider({
			width:w, 
			height:h, 
			pauseSlideshowOnHover:false,
			linkTarget:'_bank',
			sliceDelay:'50', //Thoi gian xuat hien anh
			slideshowDelay:3000, // thoi gian chuyen doi hinh anh
			slideProperties:{}
	});
}
