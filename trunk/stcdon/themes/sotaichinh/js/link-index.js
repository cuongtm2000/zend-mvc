function goWebsite(value) {
	value = value.split('|');
	var link = value[0];
	var target = value[1];
	
	window.open(link, target);
}
