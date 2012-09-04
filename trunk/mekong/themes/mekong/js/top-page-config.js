jQuery.fn.topLink = function(settings) {
		settings = jQuery.extend({
			min: 1,
			fadeSpeed: 200,
			ieOffset: 50
		}, settings);
	};
	
	$(document).ready(function() {
		$('#top-link').topLink({
			min: 400,
			fadeSpeed: 500
		});
		//smoothscroll
		$('#top-link').click(function(e) {
			e.preventDefault();
			$.scrollTo(0,900);
		});
	});	