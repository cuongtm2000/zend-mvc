function echeck(str){
	var at="@"
	var dot="."
	var lat=str.indexOf(at)
	var lstr=str.length
	var ldot=str.indexOf(dot)
	if (str.indexOf(at)==-1){
	   alert("Email không hợp lệ!")
	   return false
	}

	if (str.indexOf(at)==-1 || str.indexOf(at)==0 || str.indexOf(at)==lstr){
	   alert("Email không hợp lệ!")
	   return false
	}

	if (str.indexOf(dot)==-1 || str.indexOf(dot)==0 || str.indexOf(dot)==lstr){
		alert("Email không hợp lệ!")
		return false
	}

	 if (str.indexOf(at,(lat+1))!=-1){
		alert("Email không hợp lệ!")
		return false
	 }

	 if (str.substring(lat-1,lat)==dot || str.substring(lat+1,lat+2)==dot){
		alert("Email không hợp lệ!")
		return false
	 }

	 if (str.indexOf(dot,(lat+2))==-1){
		alert("Email không hợp lệ!")
		return false
	 }

	 if (str.indexOf(" ")!=-1){
		alert("Email không hợp lệ!")
		return false
	 }

	 return true					
}
function validatecheck(){
	var variable = document.frm;
	if(variable.fullname.value==''){
		alert("Bạn chưa nhập Họ tên!");
		variable.fullname.focus();
		return false;
	}
	if(variable.address.value==''){
		alert("Bạn chưa nhập Địa chỉ!");
		variable.address.focus();
		return false;
	}
	if(variable.phone.value==''){
		alert("Bạn chưa nhập Số điện thoại!");
		variable.phone.focus();
		return false;
	}
	if(echeck(variable.email.value)==false){
		variable.email.value="";
		variable.email.focus();
		return false;
	}
	if(variable.content.value==''){
		alert("Bạn chưa nhập Nội dung liên hệ!");
		variable.content.focus();
		return false;
	}
	if(variable.content.value.length<10){
		alert("Mật khẩu yêu cầu trên 10 ký tự");
		variable.content.focus();
		return false;
	}
	return true;
}