function select_list(the_value,the_list){
	var option_count = the_list.options.length;	
	for (i=0;i<option_count;i++){
		if (the_value==the_list.options[i].value){
			the_list.options[i].selected=true;
			break;
		}
	}
}
function radio_list(the_value,the_list){
	var name_count = the_list.length;
	for (i=0;i<name_count;i++){
		if (the_value==the_list[i].value){
			the_list[i].checked=true;
			break;
		}
	}
}