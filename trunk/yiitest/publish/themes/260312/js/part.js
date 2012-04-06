$(document).ready(function(){
  $(".part").hide();
  $(".scroll-interval").hover(function()							{
    $(this).find(".part").fadeIn(400);
  }, 
  	function(){
    $(this).find(".part").fadeOut(400);
  });
 })