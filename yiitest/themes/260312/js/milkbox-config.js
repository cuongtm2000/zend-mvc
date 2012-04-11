window.addEvent('domready', function(){
			$('pic_zoom_box').addEvent('click', function(e){
				e.preventDefault();
				milkbox.showGallery({ gallery:'gall1'});
			});
	/*$('frame-img-info').addEvent('click', function(e){
				e.preventDefault();
				milkbox.showGallery({ gallery:'gall1'});
			});
			$('flashlink').addEvent('click', function(e){
				e.preventDefault();
				milkbox.showGallery({ gallery:'gall2'});
			});*/
		});