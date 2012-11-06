function embedFlash(Embpath,Embwidth,Embheight){
var flashCode = '<object type="application/x-shockwave-flash" data="dewplayer.swf" width="200" height="20" id="dewplayer"><param name="wmode" value="transparent" /><param name="movie" value="dewplayer.swf" /><param name="FlashVars" value="mp3=Because.mp3&amp;bgcolor1=ffffff&amp;bgcolor2=cccccc&amp;buttoncolor=999999&amp;buttonovercolor=0&amp;slidercolor1=cccccc&amp;slidercolor2=999999&amp;sliderovercolor=666666&amp;autoplay=1&amp;textcolor=0&amp;showvolume=1" /><p>Texte alternatif</p></object>';
document.write(flashCode) ;
}


function embedFlashObj(Embpath,Embwidth,Embheight){
var flashCode = '<div class="panelflash"><object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,0,0" width="'+Embwidth+'" height="'+Embheight+'" id="Banner Home" align="middle"><param name="allowScriptAccess" value="sameDomain" /><param name="allowFullScreen" value="false" /><param name="movie" value="'+Embpath+'" /><param name="quality" value="high" /><param name="wmode" value="transparent" /><param name="bgcolor" value="#ffffff" /><embed src="'+Embpath+'" quality="high" wmode="transparent" bgcolor="#ffffff" width="'+Embwidth+'" height="'+Embheight+'" name="Banner Home" align="middle" allowScriptAccess="sameDomain" allowFullScreen="false" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer" /></object></div>';
document.write(flashCode) ;
}


function embedyoutube(Embpath,Embwidth,Embheight){
	var url = Embpath;
	var videoid = url.match(/(?:https?:\/{2})?(?:w{3}\.)?youtu(?:be)?\.(?:com|be)(?:\/watch\?v=|\/)([^\s&]+)/);
	//alert(videoid[1]);

	var flashCode = '<iframe width="'+Embwidth+'" height="'+Embheight+'" src="http://www.youtube.com/embed/'+videoid[1]+'" frameborder="0" allowfullscreen></iframe>';
    document.write(flashCode) ;
	
	
	
  }


