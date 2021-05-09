var msg =null;

function login(){
	
	if($('#username').val() == '')
		{
			$('#username').parent('td').addClass('has-error');
			return false;
		}
	else if($('#password').val() == ''){
		
		$('#password').parent('td').addClass('has-error');
		return false;
	}
	
	//Ajax function-----------------------------------
	
	var data = $("frm-login").serialize();
	
	$.ajax({
		
		type : 'POST',
		url : 'BeneficiaryApi',
		data : data,
		dataType : 'JSON',
		
		success:function(data){
			
			msg = data[0].msg
		}
		
		
	});
	
}