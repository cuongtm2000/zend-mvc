$(document).ready(function(){
$('.tooltip').tooltip({ 
    delay: 0, 
    showURL: false, 
    bodyHandler: function() { 
    	///var id = $(this).attr("id");
        // return $(this).html(this.html); 
       // return $('#product_'+id).html(this.html); 
		 return $('.product-tool').html(this.html); 
    } 
});
});