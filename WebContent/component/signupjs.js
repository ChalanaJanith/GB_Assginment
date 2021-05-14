$(document).ready(function() 
{  
	if ($("#alertSuccess").text().trim() == "")  
	{   
		$("#alertSuccess").hide();  
	} 
	$("#alertError").hide(); 
}); 

//SAVE ============================================ 
$(document).on("click", "#btnsave", function(event) 
{  
	// Clear alerts---------------------  
	$("#alertSuccess").text("");  
	$("#alertSuccess").hide();  
	$("#alertError").text("");  
	$("#alertError").hide(); 

	// Form validation-------------------  
	var status = validateCustomerForm();  
	if (status != true)  
	{   
		$("#alertError").text(status);   
		$("#alertError").show();   
		return;  
	} 

	// If valid------------------------  
	var t = ($("#hidInventorIDSave").val() == "") ? "POST" : "PUT";
	
	$.ajax(
	{
		url : "BeneficiaryApi",
		type : t,
		data : $("#formbeneficiary").serialize(),
		dataType : "text",
		complete : function(response, status)
		{
			onCustomerSaveComplete(response.responseText, status);
		}
	});
}); 


function onCustomerSaveComplete(response, status){
	if(status == "success")
	{
		var resultSet = JSON.parse(response);
			
		if(resultSet.status.trim() == "success")
		{
			$("#alertSuccess").text("Successfully Saved.");
			$("#alertSuccess").show();
					
	
		}else if(resultSet.status.trim() == "error"){
			$("#alertError").text(resultSet.data);
			$("#alertError").show();
		}
	}else if(status == "error"){
		$("#alertError").text("Error While Saving.");
		$("#slertError").show();
	}else{
		$("#alertError").text("Unknown Error while Saving.");
		$("#alertError").show();
	}
	$("#hidInventorIDSave").val("");
	$("#formbeneficiary")[0].reset();

}

//CLIENTMODEL
function validateCustomerForm() {  
	// NAME  
	if ($("#InventorUser").val().trim() == "")  {   
		return "Insert userName.";  
		
	} 
	
	 // Email 
	if ($("#InventorAge").val().trim() == "")  {   
		return "Insert age.";  
	} 
	
	
	// NIC  
	if ($("#InventorAddress").val().trim() == "")  {   
		return "Insert address."; 
		 
	}
	 
	
	if ($("#InventorPassword").val().trim() == "")  {   
		return "Insert password."; 
		 
	}
	  
	
		

	 
	 return true; 
	 
}

