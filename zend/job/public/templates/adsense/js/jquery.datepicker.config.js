$(function() {
	$.datepicker.setDefaults( $.datepicker.regional[ "vi" ] );		
	var dates = $( "#start_date, #last_date" ).datepicker({
		changeMonth: true,
		changeYear: true,
		minDate: 0, 
		maxDate: "+3Y",
		numberOfMonths: 2,
	//	showButtonPanel: true,
		showAnim:"show",
		onSelect: function( selectedDate ) {
			var option = this.id == "start_date" ? "minDate" : "maxDate",
				instance = $( this ).data( "datepicker" ),
				date = $.datepicker.parseDate(
					instance.settings.dateFormat ||
					$.datepicker._defaults.dateFormat,
					selectedDate, instance.settings );
			dates.not( this ).datepicker( "option", option, date );
		}
	});			
});