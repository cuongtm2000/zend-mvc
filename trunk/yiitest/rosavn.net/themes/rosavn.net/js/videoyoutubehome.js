function embedyoutube(Embpath,Embwidth,Embheight){
	var videoId = Embpath.split('=');
	this.videoID = videoId[1];
    var flashCode = '<object width="'+Embwidth+'" height="'+Embheight+'"><param name="movie" value="http://www.youtube.com/v/'+this.videoID+'?fs=1&amp;autoplay=1;hl=en_US"></param><param name="allowFullScreen" value="true"></param><param name="allowscriptaccess" value="always"></param><embed src="http://www.youtube.com/v/'+this.videoID+'?fs=1&amp;autoplay=1;hl=en_US" type="application/x-shockwave-flash" allowscriptaccess="always" allowfullscreen="true" width="'+Embwidth+'" height="'+Embheight+'"></embed></object>';
    document.write(flashCode) ;
}