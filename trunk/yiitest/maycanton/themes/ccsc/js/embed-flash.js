function embedFlashObj(Embpath,Embwidth,Embheight){
var flashCode = '<div class="panelflash"><object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,0,0" width="'+Embwidth+'" height="'+Embheight+'" id="Banner Home" align="middle"><param name="allowScriptAccess" value="sameDomain" /><param name="allowFullScreen" value="false" /><param name="movie" value="'+Embpath+'" /><param name="quality" value="high" /><param name="wmode" value="transparent" /><param name="bgcolor" value="#ffffff" /><embed src="'+Embpath+'" quality="high" wmode="transparent" bgcolor="#ffffff" width="'+Embwidth+'" height="'+Embheight+'" name="Banner Home" align="middle" allowScriptAccess="sameDomain" allowFullScreen="false" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer" /></object></div>';
document.write(flashCode) ;
}
function embedyoutube(Embpath,Embwidth,Embheight){
    var videoId = Embpath.split('=');
    this.videoID = videoId[1];
    //var flashCode = '<object width="'+Embwidth+'" height="'+Embheight+'"><param name="movie" value="http://www.youtube.com/v/'+this.videoID+'?fs=1&amp;autoplay=1;hl=en_US&amp;rel=0"></param><param name="allowFullScreen" value="true"></param><param name="allowscriptaccess" value="always"></param><embed src="http://www.youtube.com/v/'+this.videoID+'?fs=1&amp;autoplay=1;hl=en_US&amp;rel=0" type="application/x-shockwave-flash" allowscriptaccess="always" allowfullscreen="true" width="'+Embwidth+'" height="'+Embheight+'"></embed></object>';
    var flashCode = '<iframe width="'+Embwidth+'" height="'+Embheight+'" src="http://www.youtube.com/embed/'+this.videoID+'?rel=0" frameborder="0" allowfullscreen></iframe>';
    document.write(flashCode) ;
}

