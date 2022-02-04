var code ; //定义全局变量

function hideShowPsw() {
var demoImg = document.getElementById("showpswd");
var demoInput = document.getElementById("password");
var demoInput2 = document.getElementById("password2");
  if (demoInput.type == "password") {
	  demoImg.src="images/close.png";
	  demoInput.type = "text";
	  demoInput2.type = "text";
  } else {
	  demoImg.src="images/open.png";
	  demoInput.type = "password";    
	  demoInput2.type = "password"; 
  }
 }
  
function createCode(){ 
		
   code = "";    
   var codeLength = 6;//
   var checkCode = document.getElementById("code");    
   var random = new Array(
0,1,2,3,4,5,6,7,8,9,
'A','B','C','D','E','F','G',
'H','I','J','K','L','M','N',
'O','P','Q','R','S','T',
'U','V','W','X','Y','Z');
for(var i = 0; i < codeLength; i++) {
    var index = Math.floor(Math.random()*36);
    code += random[index]; 
}   
     checkCode.value = code;
} 
        
function login(){    
	var inputCode=$('#input').val();
	var selected_val = $('#loginSelect').val();
    //alert(code);
if(inputCode.length <= 0) {   
    alert("请输入验证码！"); 
}else if(inputCode != code.toString()) { 
    alert("验证码输入错误！");   
    createCode();
    document.getElementById("input").value = "";//   
}else if(selected_val == '1' ){ 
    checkID();
}else {
    check();
}}  //登陆验证功能


		   
		 
		