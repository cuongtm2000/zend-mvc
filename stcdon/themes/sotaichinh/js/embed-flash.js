function embedFlash(Embpath,Embwidth,Embheight){
var flashCode = '<object type="application/x-shockwave-flash" data="dewplayer.swf" width="200" height="20" id="dewplayer"><param name="wmode" value="transparent" /><param name="movie" value="dewplayer.swf" /><param name="FlashVars" value="mp3=Because.mp3&amp;bgcolor1=ffffff&amp;bgcolor2=cccccc&amp;buttoncolor=999999&amp;buttonovercolor=0&amp;slidercolor1=cccccc&amp;slidercolor2=999999&amp;sliderovercolor=666666&amp;autoplay=1&amp;textcolor=0&amp;showvolume=1" /><p>Texte alternatif</p></object>';
document.write(flashCode) ;
}

function embedFlashObj(Embpath,Embwidth,Embheight){
var flashCode = '<div class="panelflash"><object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,0,0" width="'+Embwidth+'" height="'+Embheight+'" id="Banner Home" align="middle"><param name="allowScriptAccess" value="sameDomain" /><param name="allowFullScreen" value="false" /><param name="movie" value="'+Embpath+'" /><param name="quality" value="high" /><param name="wmode" value="transparent" /><param name="bgcolor" value="#ffffff" /><embed src="'+Embpath+'" quality="high" wmode="transparent" bgcolor="#ffffff" width="'+Embwidth+'" height="'+Embheight+'" name="Banner Home" align="middle" allowScriptAccess="sameDomain" allowFullScreen="false" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer" /></object></div>';
document.write(flashCode) ;
}

function embedmarqueeTop(Embpath){
	var flashCode ='<marquee loop="infinite" onmouseover=this.stop();onmouseout=this.start(); scrollAmount=1 scrollDelay=5direction=up width="100%" height=170 name="hotnews"> '+Embpath+'</marquee>';
	document.write(flashCode) ;
}


function embedFlashBanner(Embpath,Embwidth,Embheight){
var flashCode = '<div class="panelflash"><object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,0,0" width="'+Embwidth+'" height="'+Embheight+'" id="Banner Home" align="middle"><param name="allowScriptAccess" value="sameDomain" /><param name="allowFullScreen" value="false" /><param name="movie" value="'+Embpath+'" /><param name="quality" value="high" /><param name="wmode" value="transparent" /><param name="bgcolor" value="#ffffff" /><embed src="'+Embpath+'" quality="high" wmode="transparent" bgcolor="#ffffff" width="'+Embwidth+'" height="'+Embheight+'" name="Banner Home" align="middle" allowScriptAccess="sameDomain" allowFullScreen="false" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer" /></object></div>';
document.write(flashCode) ;
}
