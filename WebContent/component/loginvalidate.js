$(document).ready(function(){
	
	//use keyup event on email field
	$("#username").keyup(function(){
		//set initially button state hidden
		$("#btnLogin").hide();
		
		if(validateEmail()){
			
			//if the email is validated
			//set input email border green
			$("#username").css("border","2px solid green");
			//and set label
			$("#emailmsg").html("<p class='text-success'>Valid email type</p>");
		}else{
			//if the email is not validated
			//set input email border red
			$("#username").css("border","2px solid red");
			$("#emailmsg").html("<p class='text-danger'>Invalid email type</p>");
		}
		buttonState();
	});
	
	//use keyup evnt on password
	$("#password").keyup(function(){
		
		//check
		if(validatePassword){
			//set input email border green
			$("#password").css("border","2px solid green");
			//and set label
			$("#passmsg").html("<p class='text-success'>Valid password type</p>");
			
		}else{
			//set input email border green
			$("#password").css("border","2px solid red");
			//and set label
			$("#passmsg").html("<p class='text-danger'>Invalid password type</p>");
		}
		buttonState();
	});
});

function buttonState(){
	if(validateEmail() && validatePassword()){
		
		//if the email and password are validated
		//then button should show visible
		$("#btnLogin").show();
	}else{
		
		//if both email and password are not validated
		//button state should hidden
		$("#btnLogin").hide();
	}
}

function validateEmail(){
	
	//get value of input email
	var email =$("#username").val();
	//use regular expression
	var reg = /^\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/ 
	
		if(reg.test(email)){
			return true;
		}else{
			return false;
		}
}

function validatePassword(){
	
	//get value of input email
	var pass =$("#password").val();
	
		if(pass.length > 5){
			return true;
		}else{
			return false;
		}
}