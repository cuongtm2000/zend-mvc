function embedFlash(Embpath,Embwidth,Embheight){
var flashCode = '<object type="application/x-shockwave-flash" data="dewplayer.swf" width="200" height="20" id="dewplayer"><param name="wmode" value="transparent" /><param name="movie" value="dewplayer.swf" /><param name="FlashVars" value="mp3=Because.mp3&amp;bgcolor1=ffffff&amp;bgcolor2=cccccc&amp;buttoncolor=999999&amp;buttonovercolor=0&amp;slidercolor1=cccccc&amp;slidercolor2=999999&amp;sliderovercolor=666666&amp;autoplay=1&amp;textcolor=0&amp;showvolume=1" /><p>Texte alternatif</p></object>';
document.write(flashCode) ;
}
/* 
<object width="300" height="61"><param name="movie" value="http://static.mp3.zdn.vn/skins/mp3_main/flash/player/mp3Player_skin2.swf?xmlurl=Because.mp3" /><param name="quality" value="high" /><param name="wmode" value="transparent" /><embed width="300" height="61" src="http://static.mp3.zdn.vn/skins/mp3_main/flash/player/mp3Player_skin2.swf?xmlurl=Because.mp3" quality="high" wmode="transparent" type="application/x-shockwave-flash"></embed></object><br />
*/

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

/*<object width="300" height="61"><param name="movie" value="http://static.mp3.zdn.vn/skins/mp3_main/flash/player/mp3Player_skin1.swf?xmlurl=http://mp3.zing.vn/blog?MjAxMi8wOS8yOS85L2IvInagaMEOWJhNzM0OGFjN2Q4ZmZmOTI3NTgzYmExZjI5MTA4MjMdUngWeBXAzfGF1ZGlvInagaMEIFNwYXxOZ3V5w6pdUngIHRo4WeBdUngneSBzmUsICGF8MXw1" /><param name="quality" value="high" /><param name="wmode" value="transparent" /><embed width="300" height="61" src="http://static.mp3.zdn.vn/skins/mp3_main/flash/player/mp3Player_skin1.swf?xmlurl=http://mp3.zing.vn/blog?MjAxMi8wOS8yOS85L2IvInagaMEOWJhNzM0OGFjN2Q4ZmZmOTI3NTgzYmExZjI5MTA4MjMdUngWeBXAzfGF1ZGlvInagaMEIFNwYXxOZ3V5w6pdUngIHRo4WeBdUngneSBzmUsICGF8MXw1" quality="high" wmode="transparent" type="application/x-shockwave-flash"></embed></object>
*/