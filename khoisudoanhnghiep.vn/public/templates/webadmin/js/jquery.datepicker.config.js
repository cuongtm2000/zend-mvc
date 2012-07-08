$(function() {
	$.datepicker.setDefaults( $.datepicker.regional[ "vi" ] );		
	var dates = $( "#begin_date, #end_date" ).datepicker({
		changeMonth: true,
		changeYear: true,
		//minDate: 0, 
		//maxDate: "+3Y",
		
		numberOfMonths: 2,
		showButtonPanel: true,
		showAnim:"show",
		onSelect: function( selectedDate ) {
			var option = this.id == "begin_date" ? "minDate" : "maxDate",
				instance = $( this ).data( "datepicker" ),
				date = $.datepicker.parseDate(
					instance.settings.dateFormat ||
					$.datepicker._defaults.dateFormat,
					selectedDate, instance.settings );
			dates.not( this ).datepicker( "option", option, date );
		}
	});			
});