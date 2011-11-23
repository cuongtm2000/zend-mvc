$(document).ready(function() {
	var $navLi = $('#nav li'); 
	$('<span></span>').insertBefore('#nav li .linknav');
	
	$navLi.each(function() {
	   var linkText = $(this).find('.linknav').text();
	   $(this).find('span').show().text(linkText);
	   //alert(linkText);
	});
	$navLi.hover(function() {
	    $(this)
	    .find('span')
	    .stop()
	    .animate({marginTop: '-58px'}, 300);
	}, function() {
	    $(this)
	    .find('span')
	    .stop()
	    .animate({marginTop: '0px'}, 300);
	});
});