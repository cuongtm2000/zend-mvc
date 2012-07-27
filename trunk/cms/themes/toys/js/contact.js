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
/**** Form Lien he ****/
function validatecheck(){
	var variable = document.frm;
	if(variable.fullname.value==''){
		alert("Bạn chưa nhập Họ tên!");
		variable.fullname.focus();
		return false;
	}
	if(variable.company.value==''){
		alert("Bạn chưa nhập tên công ty");
		variable.company.focus();
		return false;
	}
	if(variable.email.value==''){
		alert("Bạn chưa nhập Email");
		variable.email.focus();
		return false;
	}
	if(echeck(variable.email.value)==false){
		variable.email.value="";
		variable.email.focus();
		return false;
	}
	if(variable.phone.value==''){
		alert("Bạn chưa nhập Số điện thoại!");
		variable.phone.focus();
		return false;
	}
	
	if(variable.content.value==''){
		alert("Bạn chưa nhập Nội dung liên hệ!");
		variable.content.focus();
		return false;
	}
	if(variable.content.value.length<10){
		alert("Nội dung yêu cầu trên 10 ký tự");
		variable.content.focus();
		return false;
	}
	return true;
}

/******   Form Đặt hàng   ******/
function order(){
	var variable = document.frmorder;
	if(variable.fullname.value==''){
		alert("Bạn chưa nhập Họ tên!");
		variable.fullname.focus();
		return false;
	}
	if(variable.passport.value==''){
		alert("Bạn chưa nhập số CMND!");
		variable.passport.focus();
		return false;
	}
	if(variable.email.value==''){
		alert("Bạn chưa nhập Email");
		variable.email.focus();
		return false;
	}
	if(echeck(variable.email.value)==false){
		variable.email.value="";
		variable.email.focus();
		return false;
	}
	if(variable.phone.value==''){
		alert("Bạn chưa nhập Số điện thoại!");
		variable.phone.focus();
		return false;
	}
	if(variable.address.value==''){
		alert("Bạn chưa nhập Địa chỉ người đặt hàng!");
		variable.address.focus();
		return false;
	}
	if(variable.content.value==''){
		alert("Bạn chưa nhập Nội dung liên hệ!");
		variable.content.focus();
		return false;
	}
	if(variable.content.value.length<10){
		alert("Nội dung yêu cầu trên 10 ký tự");
		variable.content.focus();
		return false;
	}
	return true;
}
