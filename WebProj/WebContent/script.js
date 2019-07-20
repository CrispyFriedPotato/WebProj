function inputCheck(){
	if(document.regFrm.id.value==""){
		alert("Insert your ID");
		document.regFrm.id.focus();
		return;
	}
	if(document.regFrm.pwd.value==""){
		alert("Insert your Password");
		document.regFrm.pwd.focus();
		return;
	}
	if(document.regFrm.repwd.value==""){
		alert("Insert your Password");
		document.regFrm.repwd.focus();
		return;
	}
	if(document.regFrm.pwd.value != document.regFrm.repwd.value){
		alert("Passwords are not same.");
		document.regFrm.repwd.value="";
		document.regFrm.repwd.focus();
		return;
	}
	if(document.regFrm.email.value==""){
		alert("Insert your email.");
		document.regFrm.email.focus();
		return;
	}
	if(document.regFrm.country.value==""){
		alert("Choose your country");
		document.regFrm.country.focus();
		return;
	}
    var str=document.regFrm.email.value;	   
    var atPos = str.indexOf('@');
    var atLastPos = str.lastIndexOf('@');
    var dotPos = str.indexOf('.'); 
    var spacePos = str.indexOf(' ');
    var commaPos = str.indexOf(',');
    var eMailSize = str.length;
    if (atPos > 1 && atPos == atLastPos && 
	   dotPos > 3 && spacePos == -1 && commaPos == -1 
	   && atPos + 1 < dotPos && dotPos + 1 < eMailSize);
    else {
          alert('E-mail format is wrong.\n\rPlease insert again!');
	      document.regFrm.email.focus();
		  return;
    }
    
	document.regFrm.submit();
}

function win_close(){
	self.close();
}