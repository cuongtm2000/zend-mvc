$(document).ready(function(){
	$(".group1").colorbox({rel:'group1',speed:350});
	$(".group2").colorbox({rel:'group2', transition:"fade",speed:350});
	//Example of preserving a JavaScript event for inline calls.
	$("#click").click(function(){ 
		$('#click').css({"background-color":"#f00", "color":"#fff", "cursor":"inherit"}).text("Open this window again and this message will still be here.");
		return false;
	});
});
