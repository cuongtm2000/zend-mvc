function validateUsername(fld) {
    var error = "";
    var illegalChars = /\W/; // allow letters, numbers, and underscores
 
    if (fld.value == "") {
        fld.focus();
        error = "- Bạn cần điền Username đăng nhập.\n";
    } else if ((fld.value.length < 3) || (fld.value.length > 45)) { 
        fld.focus();
        error = "- Username phải trên 3 ký tự.\n";
    } else if (illegalChars.test(fld.value)) { 
        fld.focus();
        error = "- Username có ký tự không hợp lệ.\n";
    }
    return error;
}
function validatePassword(fld){
    var error = "";
    
    if (fld.value == "") {
        fld.focus();
        error = "- Bạn cần điền Mật khẩu đăng nhập.\n";
    } else if ((fld.value.length < 6) || (fld.value.length > 45)) {
        fld.focus();
        error = "- Mật khẩu phải trên 6 ký tự. \n";
    } else if (!((fld.value.search(/(a-z)+/)) && (fld.value.search(/(0-9)+/)))) {
        fld.focus();
        error = "- Mật khẩu phải có ít nhất một chữ số.\n";
    }
    return error;
}
function validateFormOnSubmit(theForm) {
    var reason = "";
    reason += validateUsername(theForm.username);
    reason += validatePassword(theForm.password);
      
    if (reason != "") {
    alert("Vui lòng nhập thông tin:\n" + reason);
    return false;
    }
    
    return true;
}