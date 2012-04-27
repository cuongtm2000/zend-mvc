$(document).ready(function(){
	$('.right').width('31%');
	$('.left').width('67%');
	var left_width = $('.left').width();

	$('#image-block').width(left_width);
	$('#image-block img').width(left_width);
	$('#paginate-slider2').width(left_width-52);
});